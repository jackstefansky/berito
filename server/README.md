# Berito server

Minimal auth backend (Express + SQLite via built-in `node:sqlite`, Node >= 22.5).

```
npm install
npm run seed   # creates student@berito.app / password
npm start      # http://localhost:3000
```

- `POST /auth/login` `{email, password}` -> `{token, userId, email}`
- `GET /auth/session` (`Authorization: Bearer <token>`) -> `{userId, email}`
- `POST /auth/logout` (Bearer) -> 204
- `GET /assignments` (Bearer) -> upcoming assignments, nearest due date first
- `GET /courses/:courseId/assignments` (Bearer) -> same, for one course
- `GET /students/me` (Bearer) -> the signed-in student
- `GET /schedule` (all upcoming), `GET /schedule/:id` (Bearer) -> classes
- `GET /affairs`, `GET /announcements` (Bearer)

Seed due dates are relative to when `npm run seed` runs; re-run it to refresh them.

Env: `DELAY_MS` (0; delays every response, to test loading states; `npm run start:slow` uses 2000), `PORT` (3000), `DB_PATH` (`berito.db`).
