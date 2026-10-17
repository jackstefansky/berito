import { randomBytes } from 'node:crypto';
import express from 'express';
import db from './db.js';
import { verifyPassword } from './password.js';

const app = express();
app.use(express.json());

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
app.get('/auth/session', (req, res) => {
  const session = sessionFor(bearerToken(req));
  if (!session) return res.status(401).json({ error: 'Sesja wygasła' });
  res.json(session);
});

// POST /auth/logout (Bearer) -> 204
app.post('/auth/logout', (req, res) => {
  const token = bearerToken(req);
  if (token) db.prepare('DELETE FROM sessions WHERE token = ?').run(token);
  res.status(204).end();
});

export default app;
