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
