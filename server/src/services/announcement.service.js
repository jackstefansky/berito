import { desc } from 'drizzle-orm';
import { db } from '../db/index.js';
import { announcements } from '../db/schema.js';

/** Newest first. */
export function listAnnouncements() {
  return db.select().from(announcements).orderBy(desc(announcements.publishedAt)).all();
}
