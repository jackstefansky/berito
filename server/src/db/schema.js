import { sql } from 'drizzle-orm';
import { check, integer, real, sqliteTable, text } from 'drizzle-orm/sqlite-core';

const timestamp = (name) => integer(name, { mode: 'timestamp_ms' });

export const users = sqliteTable('users', {
  id: text('id').primaryKey(),
  email: text('email').notNull().unique(),
  passwordHash: text('password_hash').notNull(),
});

export const sessions = sqliteTable('sessions', {
  token: text('token').primaryKey(),
  userId: text('user_id')
    .notNull()
    .references(() => users.id, { onDelete: 'cascade' }),
  createdAt: timestamp('created_at').notNull(),
});

export const students = sqliteTable('students', {
  userId: text('user_id')
    .primaryKey()
    .references(() => users.id, { onDelete: 'cascade' }),
  firstName: text('first_name').notNull(),
  lastName: text('last_name').notNull(),
  indexNumber: text('index_number').notNull(),
  fieldOfStudy: text('field_of_study').notNull(),
  semester: integer('semester').notNull(),
});

export const classes = sqliteTable(
  'classes',
  {
    id: text('id').primaryKey(),
    courseId: text('course_id').notNull(),
    name: text('name').notNull(),
    type: text('type', { enum: ['lecture', 'laboratory', 'conversatory'] }).notNull(),
    start: timestamp('start').notNull(),
    end: timestamp('end').notNull(),
    lecturer: text('lecturer').notNull(),
    room: text('room'),
    meetingUrl: text('meeting_url'),
  },
  (t) => [check('classes_type_check', sql`${t.type} IN ('lecture', 'laboratory', 'conversatory')`)],
);

export const affairs = sqliteTable(
  'affairs',
  {
    id: text('id').primaryKey(),
    type: text('type', { enum: ['payment', 'exam', 'assignment'] }).notNull(),
    title: text('title').notNull(),
    description: text('description').notNull(),
    dueDate: timestamp('due_date').notNull(),
  },
  (t) => [check('affairs_type_check', sql`${t.type} IN ('payment', 'exam', 'assignment')`)],
);

export const announcements = sqliteTable('announcements', {
  id: text('id').primaryKey(),
  title: text('title').notNull(),
  description: text('description').notNull(),
  publishedAt: timestamp('published_at').notNull(),
});

export const grades = sqliteTable(
  'grades',
  {
    id: text('id').primaryKey(),
    userId: text('user_id')
      .notNull()
      .references(() => users.id, { onDelete: 'cascade' }),
    courseName: text('course_name').notNull(),
    value: real('value').notNull(),
    date: timestamp('date').notNull(),
    lecturer: text('lecturer').notNull(),
  },
  (t) => [check('grades_value_check', sql`${t.value} IN (2, 3, 3.5, 4, 4.5, 5)`)],
);

export const assignments = sqliteTable(
  'assignments',
  {
    id: text('id').primaryKey(),
    courseId: text('course_id').notNull(),
    title: text('title').notNull(),
    courseName: text('course_name').notNull(),
    type: text('type', { enum: ['project', 'task', 'report', 'quiz'] }).notNull(),
    dueDate: timestamp('due_date').notNull(),
  },
  (t) => [check('assignments_type_check', sql`${t.type} IN ('project', 'task', 'report', 'quiz')`)],
);
