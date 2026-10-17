import db from './db.js';
import { hashPassword } from './password.js';

// Matches MockData.student.id in the mobile app.
const account = { id: 's1', email: 'student@berito.app', password: 'password' };

db.prepare(
  `INSERT INTO users (id, email, password_hash) VALUES (?, ?, ?)
   ON CONFLICT(id) DO UPDATE SET email = excluded.email,
                                 password_hash = excluded.password_hash`,
).run(account.id, account.email, hashPassword(account.password));

console.log(`Seeded ${account.email} / ${account.password}`);

// Due dates are relative to the seeding time so they are always upcoming;
// re-run `npm run seed` to refresh them.
const now = new Date();
const due = (days, hour = 23, minute = 59) =>
  new Date(now.getFullYear(), now.getMonth(), now.getDate() + days, hour, minute).getTime();

const assignments = [
  ['as1', 'course-mobile', 'Aplikacja mobilna – etap 2', 'Zaawansowane projektowanie aplikacji mobilnych', 'project', due(2)],
  ['as2', 'course-distributed', 'Zadanie 4: replikacja danych', 'Systemy rozproszone', 'task', due(4, 18, 0)],
  ['as3', 'course-db', 'Kolokwium z normalizacji', 'Bazy danych', 'quiz', due(6, 12, 0)],
  ['as4', 'course-db', 'Sprawozdanie z laboratorium 3', 'Bazy danych', 'report', due(9)],
  ['as5', 'course-distributed', 'Projekt zespołowy – prototyp', 'Systemy rozproszone', 'project', due(16)],
  ['as6', 'course-ethics', 'Esej: odpowiedzialność inżyniera', 'Etyka w informatyce', 'report', due(21)],
];

const upsert = db.prepare(
  `INSERT INTO assignments (id, course_id, title, course_name, type, due_date)
   VALUES (?, ?, ?, ?, ?, ?)
   ON CONFLICT(id) DO UPDATE SET course_id = excluded.course_id,
     title = excluded.title, course_name = excluded.course_name,
     type = excluded.type, due_date = excluded.due_date`,
);
for (const row of assignments) upsert.run(...row);

console.log(`Seeded ${assignments.length} assignments`);
