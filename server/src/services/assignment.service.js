import { and, eq, gte } from 'drizzle-orm';
import { db } from '../db/index.js';
import { assignments } from '../db/schema.js';

/** Upcoming assignments, nearest due date first; optionally for one course. */
export function listUpcomingAssignments(courseId) {
  return db
    .select()
    .from(assignments)
    .where(
      and(
        gte(assignments.dueDate, new Date()),
        courseId ? eq(assignments.courseId, courseId) : undefined,
      ),
    )
    .orderBy(assignments.dueDate)
    .all();
}
