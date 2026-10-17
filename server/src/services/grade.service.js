import { desc, eq } from 'drizzle-orm';
import { db } from '../db/index.js';
import { grades } from '../db/schema.js';

/** A student's grades, newest first. */
export function listGrades(userId) {
  const rows = db
    .select()
    .from(grades)
    .where(eq(grades.userId, userId))
    .orderBy(desc(grades.date))
    .all();
  return rows.map(({ userId: _userId, ...grade }) => grade);
}
