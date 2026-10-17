import db from './db.js';
import { hashPassword } from './password.js';

// Matches MockData.student.id in the mobile app.
const account = { id: 's1', email: 'student@berito.app', password: 'password' };

db.prepare(
  `INSERT INTO users (id, email, password_hash) VALUES (?, ?, ?)
   ON CONFLICT(id) DO UPDATE SET email = excluded.email,
                                 password_hash = excluded.password_hash`,
).run(account.id, account.email, hashPassword(account.password));

console.log(`Seeded ${account.email} / ${account.password}`);

// Due dates are relative to the seeding time so they are always upcoming;
// re-run `npm run seed` to refresh them.
const now = new Date();
const due = (days, hour = 23, minute = 59) =>
  new Date(now.getFullYear(), now.getMonth(), now.getDate() + days, hour, minute).getTime();

const assignments = [
  ['as1', 'course-mobile', 'Aplikacja mobilna – etap 2', 'Zaawansowane projektowanie aplikacji mobilnych', 'project', due(2)],
  ['as2', 'course-distributed', 'Zadanie 4: replikacja danych', 'Systemy rozproszone', 'task', due(4, 18, 0)],
  ['as3', 'course-db', 'Kolokwium z normalizacji', 'Bazy danych', 'quiz', due(6, 12, 0)],
  ['as4', 'course-db', 'Sprawozdanie z laboratorium 3', 'Bazy danych', 'report', due(9)],
  ['as5', 'course-distributed', 'Projekt zespołowy – prototyp', 'Systemy rozproszone', 'project', due(16)],
  ['as6', 'course-ethics', 'Esej: odpowiedzialność inżyniera', 'Etyka w informatyce', 'report', due(21)],
];

const upsert = db.prepare(
  `INSERT INTO assignments (id, course_id, title, course_name, type, due_date)
   VALUES (?, ?, ?, ?, ?, ?)
   ON CONFLICT(id) DO UPDATE SET course_id = excluded.course_id,
     title = excluded.title, course_name = excluded.course_name,
     type = excluded.type, due_date = excluded.due_date`,
);
for (const row of assignments) upsert.run(...row);

console.log(`Seeded ${assignments.length} assignments`);

db.prepare(
  `INSERT INTO students (user_id, first_name, last_name, index_number, field_of_study, semester)
   VALUES ('s1', 'Jan', 'Kowalski', '123456', 'Computer Science', 7)
   ON CONFLICT(user_id) DO UPDATE SET first_name = excluded.first_name,
     last_name = excluded.last_name, index_number = excluded.index_number,
     field_of_study = excluded.field_of_study, semester = excluded.semester`,
).run();

const at = (days, hour, minute = 0) =>
  new Date(now.getFullYear(), now.getMonth(), now.getDate() + days, hour, minute).getTime();
const ago = (days) => now.getTime() - days * 24 * 60 * 60 * 1000;

// [id, courseId, name, type, start, end, lecturer, room, meetingUrl]
const classes = [
  ['cl1', 'course-mobile', 'Zaawansowane projektowanie aplikacji mobilnych', 'laboratory', at(1, 8), at(1, 9, 30), 'dr inż. Anna Nowak', 'B-204', null],
  ['cl2', 'course-distributed', 'Systemy rozproszone', 'lecture', at(1, 10), at(1, 11, 30), 'prof. Piotr Wiśniewski', null, 'https://teams.microsoft.com/l/meetup-join/berito-sr'],
  ['cl3', 'course-ethics', 'Etyka w informatyce', 'conversatory', at(2, 12), at(2, 13, 30), 'dr Katarzyna Zielińska', 'A-101', null],
  ['cl4', 'course-db', 'Bazy danych', 'lecture', at(3, 9), at(3, 10, 30), 'dr hab. Marek Lewandowski', 'C-12', null],
  ['cl5', 'course-db', 'Bazy danych', 'laboratory', at(3, 11), at(3, 12, 30), 'dr hab. Marek Lewandowski', 'C-14', null],
  ['cl6', 'course-distributed', 'Systemy rozproszone', 'laboratory', at(4, 14), at(4, 15, 30), 'mgr inż. Jan Szymański', null, 'https://teams.microsoft.com/l/meetup-join/berito-sr-lab'],
  ['cl7', 'course-ethics', 'Etyka w informatyce', 'lecture', at(6, 10), at(6, 11, 30), 'dr Katarzyna Zielińska', 'A-101', null],
];
const upsertClass = db.prepare(
  `INSERT INTO classes (id, course_id, name, type, start, end, lecturer, room, meeting_url)
   VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
   ON CONFLICT(id) DO UPDATE SET course_id = excluded.course_id, name = excluded.name,
     type = excluded.type, start = excluded.start, end = excluded.end,
     lecturer = excluded.lecturer, room = excluded.room, meeting_url = excluded.meeting_url`,
);
for (const row of classes) upsertClass.run(...row);

// [id, type, title, description, dueDate]
const affairs = [
  ['af1', 'assignment', 'Termin oddania projektu', 'Aplikacja mobilna – etap 2', due(2)],
  ['af2', 'exam', 'Nadchodzący egzamin', 'Systemy rozproszone – sala B-204', due(9)],
  ['af3', 'payment', 'Opłata za studia', 'Czesne za semestr zimowy – 1 200 zł', due(14)],
];
const upsertAffair = db.prepare(
  `INSERT INTO affairs (id, type, title, description, due_date) VALUES (?, ?, ?, ?, ?)
   ON CONFLICT(id) DO UPDATE SET type = excluded.type, title = excluded.title,
     description = excluded.description, due_date = excluded.due_date`,
);
for (const row of affairs) upsertAffair.run(...row);

// [id, title, description, publishedAt]
const announcements = [
  ['an1', 'Zmiana godzin pracy dziekanatu', 'Od przyszłego tygodnia dziekanat jest czynny od poniedziałku do piątku w godzinach 9:00–15:00.', ago(1)],
  ['an2', 'Zapisy na przedmioty do wyboru', 'Rozpoczęły się zapisy na przedmioty do wyboru w semestrze letnim. Zapisy trwają do końca miesiąca.', ago(3)],
  ['an3', 'Dni otwarte biblioteki', 'Zapraszamy na szkolenie z korzystania z zasobów cyfrowych biblioteki uniwersyteckiej.', ago(6)],
];
const upsertAnnouncement = db.prepare(
  `INSERT INTO announcements (id, title, description, published_at) VALUES (?, ?, ?, ?)
   ON CONFLICT(id) DO UPDATE SET title = excluded.title,
     description = excluded.description, published_at = excluded.published_at`,
);
for (const row of announcements) upsertAnnouncement.run(...row);

console.log('Seeded student, classes, affairs and announcements');
