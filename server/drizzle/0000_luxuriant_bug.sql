CREATE TABLE `affairs` (
	`id` text PRIMARY KEY NOT NULL,
	`type` text NOT NULL,
	`title` text NOT NULL,
	`description` text NOT NULL,
	`due_date` integer NOT NULL,
	CONSTRAINT "affairs_type_check" CHECK("affairs"."type" IN ('payment', 'exam', 'assignment'))
);
--> statement-breakpoint
CREATE TABLE `announcements` (
	`id` text PRIMARY KEY NOT NULL,
	`title` text NOT NULL,
	`description` text NOT NULL,
	`published_at` integer NOT NULL
);
--> statement-breakpoint
CREATE TABLE `assignments` (
	`id` text PRIMARY KEY NOT NULL,
	`course_id` text NOT NULL,
	`title` text NOT NULL,
	`course_name` text NOT NULL,
	`type` text NOT NULL,
	`due_date` integer NOT NULL,
	CONSTRAINT "assignments_type_check" CHECK("assignments"."type" IN ('project', 'task', 'report', 'quiz'))
);
--> statement-breakpoint
CREATE TABLE `classes` (
	`id` text PRIMARY KEY NOT NULL,
	`course_id` text NOT NULL,
	`name` text NOT NULL,
	`type` text NOT NULL,
	`start` integer NOT NULL,
	`end` integer NOT NULL,
	`lecturer` text NOT NULL,
	`room` text,
	`meeting_url` text,
	CONSTRAINT "classes_type_check" CHECK("classes"."type" IN ('lecture', 'laboratory', 'conversatory'))
);
--> statement-breakpoint
CREATE TABLE `grades` (
	`id` text PRIMARY KEY NOT NULL,
	`user_id` text NOT NULL,
	`course_name` text NOT NULL,
	`value` real NOT NULL,
	`date` integer NOT NULL,
	`lecturer` text NOT NULL,
	FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON UPDATE no action ON DELETE cascade,
	CONSTRAINT "grades_value_check" CHECK("grades"."value" IN (2, 3, 3.5, 4, 4.5, 5))
);
--> statement-breakpoint
CREATE TABLE `sessions` (
	`token` text PRIMARY KEY NOT NULL,
	`user_id` text NOT NULL,
	`created_at` integer NOT NULL,
	FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE TABLE `students` (
	`user_id` text PRIMARY KEY NOT NULL,
	`first_name` text NOT NULL,
	`last_name` text NOT NULL,
	`index_number` text NOT NULL,
	`field_of_study` text NOT NULL,
	`semester` integer NOT NULL,
	FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON UPDATE no action ON DELETE cascade
);
--> statement-breakpoint
CREATE TABLE `users` (
	`id` text PRIMARY KEY NOT NULL,
	`email` text NOT NULL,
	`password_hash` text NOT NULL
);
--> statement-breakpoint
CREATE UNIQUE INDEX `users_email_unique` ON `users` (`email`);