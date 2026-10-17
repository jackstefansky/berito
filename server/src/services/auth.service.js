import { randomBytes } from 'node:crypto';
import { eq } from 'drizzle-orm';
import { db } from '../db/index.js';
import { sessions, users } from '../db/schema.js';
import { verifyPassword } from '../util/password.js';

/** Returns `{token, userId, email}`, or null when the credentials are wrong. */
export function login(email, password) {
  const user = db
    .select()
    .from(users)
    .where(eq(users.email, email.trim().toLowerCase()))
    .get();
  if (!user || !verifyPassword(password, user.passwordHash)) return null;

  const token = randomBytes(32).toString('hex');
  db.insert(sessions).values({ token, userId: user.id, createdAt: new Date() }).run();
  return { token, userId: user.id, email: user.email };
}

/** The `{userId, email}` behind [token], or null. */
export function findSession(token) {
  if (!token) return null;
  return (
    db
      .select({ userId: users.id, email: users.email })
      .from(sessions)
      .innerJoin(users, eq(users.id, sessions.userId))
      .where(eq(sessions.token, token))
      .get() ?? null
  );
}

export function logout(token) {
  db.delete(sessions).where(eq(sessions.token, token)).run();
}
