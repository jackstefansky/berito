import { DatabaseSync } from 'node:sqlite';

const db = new DatabaseSync(process.env.DB_PATH ?? 'berito.db');

db.exec(`
  CREATE TABLE IF NOT EXISTS users (
    id            TEXT PRIMARY KEY,
    email         TEXT NOT NULL UNIQUE,
    password_hash TEXT NOT NULL
  );
  CREATE TABLE IF NOT EXISTS sessions (
    token      TEXT PRIMARY KEY,
    user_id    TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    created_at INTEGER NOT NULL
  );
  CREATE TABLE IF NOT EXISTS assignments (
    id          TEXT PRIMARY KEY,
    course_id   TEXT NOT NULL,
    title       TEXT NOT NULL,
    course_name TEXT NOT NULL,
    type        TEXT NOT NULL CHECK (type IN ('project', 'task', 'report', 'quiz')),
    due_date    INTEGER NOT NULL
  );
`);

export default db;
