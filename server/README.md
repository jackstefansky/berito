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

Env: `PORT` (3000), `DB_PATH` (`berito.db`).
