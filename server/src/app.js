import { randomBytes } from 'node:crypto';
import express from 'express';
import db from './db.js';
import { verifyPassword } from './password.js';

const app = express();
app.use(express.json());

// Artificial latency for testing loading states: DELAY_MS=2000 npm start
const delayMs = Number(process.env.DELAY_MS ?? 0);
if (delayMs > 0) {
  app.use((req, res, next) => setTimeout(next, delayMs));
}

function bearerToken(req) {
  const [scheme, token] = (req.get('authorization') ?? '').split(' ');
  return scheme === 'Bearer' && token ? token : null;
}

function sessionFor(token) {
  if (!token) return null;
  return (
    db
      .prepare(
        `SELECT u.id AS userId, u.email AS email
         FROM sessions s JOIN users u ON u.id = s.user_id
         WHERE s.token = ?`,
      )
      .get(token) ?? null
  );
}

// Rejects with 401 unless the request carries a valid session token.
function requireAuth(req, res, next) {
  const session = sessionFor(bearerToken(req));
  if (!session) return res.status(401).json({ error: 'Sesja wygasła' });
  req.session = session;
  next();
}

// POST /auth/login {email, password} -> {token, userId, email}
app.post('/auth/login', (req, res) => {
  const { email, password } = req.body ?? {};
  if (typeof email !== 'string' || typeof password !== 'string') {
    return res.status(400).json({ error: 'Email i hasło są wymagane' });
  }
  const user = db
    .prepare('SELECT id, email, password_hash FROM users WHERE email = ?')
    .get(email.trim().toLowerCase());
  if (!user || !verifyPassword(password, user.password_hash)) {
    return res.status(401).json({ error: 'Nieprawidłowy email lub hasło' });
  }
  const token = randomBytes(32).toString('hex');
  db.prepare(
    'INSERT INTO sessions (token, user_id, created_at) VALUES (?, ?, ?)',
  ).run(token, user.id, Date.now());
  res.json({ token, userId: user.id, email: user.email });
});

// GET /auth/session (Bearer) -> {userId, email}
app.get('/auth/session', requireAuth, (req, res) => {
  res.json(req.session);
});

// POST /auth/logout (Bearer) -> 204
app.post('/auth/logout', (req, res) => {
  const token = bearerToken(req);
  if (token) db.prepare('DELETE FROM sessions WHERE token = ?').run(token);
  res.status(204).end();
});

function upcomingAssignments(courseId) {
  const rows = db
    .prepare(
      `SELECT id, course_id AS courseId, title, course_name AS courseName,
              type, due_date AS dueDate
       FROM assignments
       WHERE due_date >= ? AND (? IS NULL OR course_id = ?)
       ORDER BY due_date`,
    )
    .all(Date.now(), courseId, courseId);
  return rows.map((r) => ({ ...r, dueDate: new Date(r.dueDate).toISOString() }));
}

// GET /assignments (Bearer) -> upcoming assignments, nearest due date first
app.get('/assignments', requireAuth, (req, res) => {
  res.json(upcomingAssignments(null));
});

// GET /courses/:courseId/assignments (Bearer) -> same, for one course
app.get('/courses/:courseId/assignments', requireAuth, (req, res) => {
  res.json(upcomingAssignments(req.params.courseId));
});

const iso = (ms) => new Date(ms).toISOString();

// GET /students/me (Bearer) -> the signed-in student
app.get('/students/me', requireAuth, (req, res) => {
  const s = db
    .prepare(
      `SELECT user_id AS id, first_name AS firstName, last_name AS lastName,
              index_number AS indexNumber, field_of_study AS fieldOfStudy,
              semester
       FROM students WHERE user_id = ?`,
    )
    .get(req.session.userId);
  if (!s) return res.status(404).json({ error: 'Nie znaleziono studenta' });
  res.json(s);
});

const CLASS_COLUMNS = `id, course_id AS courseId, name, type, start, end,
                       lecturer, room, meeting_url AS meetingUrl`;

function toClass(row) {
  return { ...row, start: iso(row.start), end: iso(row.end) };
}

function upcomingClasses(limit) {
  return db
    .prepare(
      `SELECT ${CLASS_COLUMNS} FROM classes
       WHERE start >= ? ORDER BY start LIMIT ?`,
    )
    .all(Date.now(), limit)
    .map(toClass);
}

// GET /schedule (Bearer) -> all upcoming classes, soonest first
app.get('/schedule', requireAuth, (req, res) => {
  res.json(upcomingClasses(-1));
});

// GET /schedule/upcoming (Bearer) -> the next 3 classes (home page)
app.get('/schedule/upcoming', requireAuth, (req, res) => {
  res.json(upcomingClasses(3));
});

// GET /schedule/:id (Bearer) -> one class
app.get('/schedule/:id', requireAuth, (req, res) => {
  const row = db
    .prepare(`SELECT ${CLASS_COLUMNS} FROM classes WHERE id = ?`)
    .get(req.params.id);
  if (!row) return res.status(404).json({ error: 'Nie znaleziono zajęć' });
  res.json(toClass(row));
});

// GET /affairs (Bearer) -> things to take care of, most urgent first
app.get('/affairs', requireAuth, (req, res) => {
  const rows = db
    .prepare(
      `SELECT id, type, title, description, due_date AS dueDate
       FROM affairs WHERE due_date >= ? ORDER BY due_date`,
    )
    .all(Date.now());
  res.json(rows.map((r) => ({ ...r, dueDate: iso(r.dueDate) })));
});

// GET /announcements (Bearer) -> newest first
app.get('/announcements', requireAuth, (req, res) => {
  const rows = db
    .prepare(
      `SELECT id, title, description, published_at AS publishedAt
       FROM announcements ORDER BY published_at DESC`,
    )
    .all();
  res.json(rows.map((r) => ({ ...r, publishedAt: iso(r.publishedAt) })));
});

export default app;
