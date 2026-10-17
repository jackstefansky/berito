import { gte } from 'drizzle-orm';
import { db } from '../db/index.js';
import { affairs } from '../db/schema.js';

/** Upcoming things to take care of, most urgent first. */
export function listAffairs() {
  return db
    .select()
    .from(affairs)
    .where(gte(affairs.dueDate, new Date()))
    .orderBy(affairs.dueDate)
    .all();
}
