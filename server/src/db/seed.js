import { getTableColumns, getTableName, sql } from 'drizzle-orm';
import { hashPassword } from '../util/password.js';
import { db } from './index.js';
import {
  affairs,
  announcements,
  assignments,
  classes,
  grades,
  students,
  users,
} from './schema.js';

/** Inserts [rows], overwriting existing rows with the same primary key. */
function upsert(table, rows) {
  const columns = getTableColumns(table);
  const keys = Object.values(columns).filter((c) => c.primary);
  const set = Object.fromEntries(
    Object.entries(columns)
      .filter(([, c]) => !c.primary)
      .map(([name, c]) => [name, sql.raw(`excluded."${c.name}"`)]),
  );
  db.insert(table).values(rows).onConflictDoUpdate({ target: keys, set }).run();
  console.log(`Seeded ${rows.length} rows into ${getTableName(table)}`);
}

// Dates are relative to the seeding time so they are always upcoming (or
// recent); re-run `npm run seed` to refresh them.
const now = new Date();
const day = (offset, hour = 0, minute = 0) =>
  new Date(now.getFullYear(), now.getMonth(), now.getDate() + offset, hour, minute);
const ago = (days) => new Date(now.getTime() - days * 24 * 60 * 60 * 1000);

// Matches MockData.student.id in the mobile app.
const account = { id: 's1', email: 'student@berito.app', password: 'password' };

upsert(users, [
  { id: account.id, email: account.email, passwordHash: hashPassword(account.password) },
]);
console.log(`Account: ${account.email} / ${account.password}`);

upsert(students, [
  {
    userId: account.id,
    firstName: 'Jan',
    lastName: 'Kowalski',
    indexNumber: '123456',
    fieldOfStudy: 'Computer Science',
    semester: 7,
  },
]);

const online = {
  sr: 'https://teams.microsoft.com/l/meetup-join/berito-sr',
  srLab: 'https://teams.microsoft.com/l/meetup-join/berito-sr-lab',
};

upsert(classes, [
  { id: 'cl1', courseId: 'course-mobile', name: 'Zaawansowane projektowanie aplikacji mobilnych', type: 'laboratory', start: day(1, 8), end: day(1, 9, 30), lecturer: 'dr inż. Anna Nowak', room: 'B-204' },
  { id: 'cl2', courseId: 'course-distributed', name: 'Systemy rozproszone', type: 'lecture', start: day(1, 10), end: day(1, 11, 30), lecturer: 'prof. Piotr Wiśniewski', meetingUrl: online.sr },
  { id: 'cl3', courseId: 'course-ethics', name: 'Etyka w informatyce', type: 'conversatory', start: day(2, 12), end: day(2, 13, 30), lecturer: 'dr Katarzyna Zielińska', room: 'A-101' },
  { id: 'cl4', courseId: 'course-db', name: 'Bazy danych', type: 'lecture', start: day(3, 9), end: day(3, 10, 30), lecturer: 'dr hab. Marek Lewandowski', room: 'C-12' },
  { id: 'cl5', courseId: 'course-db', name: 'Bazy danych', type: 'laboratory', start: day(3, 11), end: day(3, 12, 30), lecturer: 'dr hab. Marek Lewandowski', room: 'C-14' },
  { id: 'cl6', courseId: 'course-distributed', name: 'Systemy rozproszone', type: 'laboratory', start: day(4, 14), end: day(4, 15, 30), lecturer: 'mgr inż. Jan Szymański', meetingUrl: online.srLab },
  { id: 'cl7', courseId: 'course-ethics', name: 'Etyka w informatyce', type: 'lecture', start: day(6, 10), end: day(6, 11, 30), lecturer: 'dr Katarzyna Zielińska', room: 'A-101' },
]);

upsert(assignments, [
  { id: 'as1', courseId: 'course-mobile', title: 'Aplikacja mobilna – etap 2', courseName: 'Zaawansowane projektowanie aplikacji mobilnych', type: 'project', dueDate: day(2, 23, 59) },
  { id: 'as2', courseId: 'course-distributed', title: 'Zadanie 4: replikacja danych', courseName: 'Systemy rozproszone', type: 'task', dueDate: day(4, 18) },
  { id: 'as3', courseId: 'course-db', title: 'Kolokwium z normalizacji', courseName: 'Bazy danych', type: 'quiz', dueDate: day(6, 12) },
  { id: 'as4', courseId: 'course-db', title: 'Sprawozdanie z laboratorium 3', courseName: 'Bazy danych', type: 'report', dueDate: day(9, 23, 59) },
  { id: 'as5', courseId: 'course-distributed', title: 'Projekt zespołowy – prototyp', courseName: 'Systemy rozproszone', type: 'project', dueDate: day(16, 23, 59) },
  { id: 'as6', courseId: 'course-ethics', title: 'Esej: odpowiedzialność inżyniera', courseName: 'Etyka w informatyce', type: 'report', dueDate: day(21, 23, 59) },
]);

upsert(affairs, [
  { id: 'af1', type: 'assignment', title: 'Termin oddania projektu', description: 'Aplikacja mobilna – etap 2', dueDate: day(2, 23, 59) },
  { id: 'af2', type: 'exam', title: 'Nadchodzący egzamin', description: 'Systemy rozproszone – sala B-204', dueDate: day(9, 23, 59) },
  { id: 'af3', type: 'payment', title: 'Opłata za studia', description: 'Czesne za semestr zimowy – 1 200 zł', dueDate: day(14, 23, 59) },
]);

upsert(announcements, [
  { id: 'an1', title: 'Zmiana godzin pracy dziekanatu', description: 'Od przyszłego tygodnia dziekanat jest czynny od poniedziałku do piątku w godzinach 9:00–15:00.', publishedAt: ago(1) },
  { id: 'an2', title: 'Zapisy na przedmioty do wyboru', description: 'Rozpoczęły się zapisy na przedmioty do wyboru w semestrze letnim. Zapisy trwają do końca miesiąca.', publishedAt: ago(3) },
  { id: 'an3', title: 'Dni otwarte biblioteki', description: 'Zapraszamy na szkolenie z korzystania z zasobów cyfrowych biblioteki uniwersyteckiej.', publishedAt: ago(6) },
]);

upsert(grades, [
  { id: 'gr1', userId: account.id, courseName: 'Systemy rozproszone', value: 5, date: day(-4), lecturer: 'prof. Piotr Wiśniewski' },
  { id: 'gr2', userId: account.id, courseName: 'Zaawansowane projektowanie aplikacji mobilnych', value: 4.5, date: day(-9), lecturer: 'dr inż. Anna Nowak' },
  { id: 'gr3', userId: account.id, courseName: 'Etyka w informatyce', value: 4, date: day(-15), lecturer: 'dr Katarzyna Zielińska' },
  { id: 'gr4', userId: account.id, courseName: 'Bazy danych', value: 3.5, date: day(-22), lecturer: 'dr hab. Marek Lewandowski' },
  { id: 'gr5', userId: account.id, courseName: 'Analiza matematyczna', value: 3, date: day(-40), lecturer: 'dr Ewa Kamińska' },
  { id: 'gr6', userId: account.id, courseName: 'Fizyka', value: 2, date: day(-55), lecturer: 'prof. Tomasz Wójcik' },
]);
