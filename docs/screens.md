# Screens

## Login page
Entry point for signed-out users. The student enters an email and password to sign in; wrong or empty input shows an error snackbar. It also has a password visibility toggle and a (not yet working) "Nie pamiętasz hasła?" link.

**Data:** the email and password typed by the user, and the resulting session (user id, email), which is stored on the device so the student stays signed in.

## Dziś tab
The home overview: what matters to the student right now. It opens with a greeting and then three sections, each showing up to three items and a "Pokaż więcej" button (not yet working).

**Data:**
- **Student:** first name, used in the greeting.
- **Nadchodzące zajęcia:** the next classes with name, type (wykład, laboratoria, konwersatorium), date and time, lecturer, and room or meeting link.
- **Moje sprawy:** things to take care of, such as a tuition payment, an upcoming exam or an assignment deadline, each with a title, description and due date.
- **Komunikacja:** university announcements with a title and description.

## Studia tab
Everything about the student's studies, split by a segmented control.

**Data:**
- **Harmonogram:** all upcoming classes grouped by day, each with name, type, time, lecturer and room or meeting link. Tapping a class opens the class details page.
- **Oceny:** final grades, each with the grade value (colored by grade), course name, date and lecturer.

## Zadania tab
A list of upcoming graded work, nearest deadline first.

**Data:** each assignment has a title, type (projekt, zadanie, sprawozdanie, kolokwium), course name, and due date and time with the number of days left. Deadlines within two days are highlighted in red.

## Class details page
Opened by tapping a class in Harmonogram. It shows everything known about that one class, with a photo of the building at the top.

**Data:**
- **Building photo:** picture of building A, B or C, taken from the room code, or an "online" banner for online classes.
- **Class information:** name, type, date, hours, lecturer, and room and building or meeting link.
- **Nadchodzące zadania:** upcoming assignments of the same course, shown as on the Zadania tab.
