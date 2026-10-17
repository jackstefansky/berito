import { eq } from 'drizzle-orm';
import { db } from '../db/index.js';
import { students } from '../db/schema.js';

export function getStudent(userId) {
  const { userId: id, ...rest } =
    db.select().from(students).where(eq(students.userId, userId)).get() ?? {};
  return id ? { id, ...rest } : null;
}
