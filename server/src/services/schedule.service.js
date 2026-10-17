import { eq, gte } from 'drizzle-orm';
import { db } from '../db/index.js';
import { classes } from '../db/schema.js';

/** Upcoming classes, soonest first. */
export function listUpcomingClasses() {
  return db
    .select()
    .from(classes)
    .where(gte(classes.start, new Date()))
    .orderBy(classes.start)
    .all();
}

export function getClass(id) {
  return db.select().from(classes).where(eq(classes.id, id)).get() ?? null;
}
