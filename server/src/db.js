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
  CREATE TABLE IF NOT EXISTS students (
    user_id        TEXT PRIMARY KEY REFERENCES users(id) ON DELETE CASCADE,
    first_name     TEXT NOT NULL,
    last_name      TEXT NOT NULL,
    index_number   TEXT NOT NULL,
    field_of_study TEXT NOT NULL,
    semester       INTEGER NOT NULL
  );
  CREATE TABLE IF NOT EXISTS classes (
    id          TEXT PRIMARY KEY,
    course_id   TEXT NOT NULL,
    name        TEXT NOT NULL,
    type        TEXT NOT NULL CHECK (type IN ('lecture', 'laboratory', 'conversatory')),
    start       INTEGER NOT NULL,
    end         INTEGER NOT NULL,
    lecturer    TEXT NOT NULL,
    room        TEXT,
    meeting_url TEXT
  );
  CREATE TABLE IF NOT EXISTS affairs (
    id          TEXT PRIMARY KEY,
    type        TEXT NOT NULL CHECK (type IN ('payment', 'exam', 'assignment')),
    title       TEXT NOT NULL,
    description TEXT NOT NULL,
    due_date    INTEGER NOT NULL
  );
  CREATE TABLE IF NOT EXISTS announcements (
    id           TEXT PRIMARY KEY,
    title        TEXT NOT NULL,
    description  TEXT NOT NULL,
    published_at INTEGER NOT NULL
  );
  CREATE TABLE IF NOT EXISTS grades (
    id          TEXT PRIMARY KEY,
    user_id     TEXT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    course_name TEXT NOT NULL,
    value       REAL NOT NULL CHECK (value IN (2, 3, 3.5, 4, 4.5, 5)),
    date        INTEGER NOT NULL,
    lecturer    TEXT NOT NULL
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
