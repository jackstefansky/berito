# Berito server

Backend for the app: Express + SQLite through the Drizzle ORM (`better-sqlite3`).

```
npm install
npm run seed   # applies migrations, loads demo data, creates student@berito.app / password
npm start      # http://localhost:3000
```

Interactive docs (Swagger UI): http://localhost:3000/docs — spec in `openapi.yaml`, also served as `/openapi.json`. Keep the spec in sync when adding endpoints.

- `POST /auth/login` `{email, password}` -> `{token, userId, email}`
- `GET /auth/session` (`Authorization: Bearer <token>`) -> `{userId, email}`
- `POST /auth/logout` (Bearer) -> 204
- `GET /assignments` (Bearer) -> upcoming assignments, nearest due date first
- `GET /courses/:courseId/assignments` (Bearer) -> same, for one course
- `GET /students/me` (Bearer) -> the signed-in student
- `GET /schedule` (all upcoming), `GET /schedule/:id` (Bearer) -> classes
- `GET /grades` (Bearer) -> the signed-in student's grades, newest first
- `GET /affairs`, `GET /announcements` (Bearer)

Seed due dates are relative to when `npm run seed` runs; re-run it to refresh them.

Env: `DELAY_MS` (0; delays every response, to test loading states; `npm run start:slow` uses 300), `PORT` (3000), `DB_PATH` (`berito.db`).

## Structure

```
src/
├── index.js        starts the server
├── app.js          Express app: JSON, docs, delay, routes
├── docs.js         Swagger UI (/docs) from openapi.yaml
├── config.js       env settings
├── db/
│   ├── schema.js   Drizzle tables (the source of truth for the schema)
│   ├── index.js    connection; applies pending migrations on start
│   └── seed.js     demo data (`npm run seed`)
├── middleware/     delay, requireAuth
├── routes/         HTTP layer, one file per area (mounted in routes/index.js)
├── services/       data access through the ORM, one file per area
└── util/           password hashing
drizzle/            generated SQL migrations (committed)
```

Routes only handle HTTP; services own the queries. Everything except
`/auth/login` and `/auth/logout` requires a Bearer token.

Changing the schema: edit `src/db/schema.js`, run `npm run db:generate`, commit
the new file in `drizzle/`; it is applied on the next start.
