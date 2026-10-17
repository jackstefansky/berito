import { fileURLToPath } from 'node:url';
import Database from 'better-sqlite3';
import { drizzle } from 'drizzle-orm/better-sqlite3';
import { migrate } from 'drizzle-orm/better-sqlite3/migrator';
import { config } from '../config.js';
import * as schema from './schema.js';

const sqlite = new Database(config.dbPath);
sqlite.pragma('foreign_keys = ON');

export const db = drizzle(sqlite, { schema });

// Apply pending migrations (generate them with `npm run db:generate`).
migrate(db, { migrationsFolder: fileURLToPath(new URL('../../drizzle', import.meta.url)) });
