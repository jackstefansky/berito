# Berito

University project: a mobile app mocking the MeritoGO student portal. Flutter, Dart ^3.13.

## Architecture

```
lib/
├── main.dart
├── app/         App widget, providers
├── core/        constant/, theme/, error/, state/ (shared primitives)
├── model/       plain data classes
├── repository/  abstract interfaces (+ mock/ implementations)
├── screen/      one directory per screen, each with its cubit/
└── widget/      shared widgets
```

- Backend will be **Supabase**, added later. Do not implement it until asked. Repositories are interfaces; the current implementations are mocks in `repository/mock/`. Supabase versions will be added next to them and swapped in `app/berito_app.dart`.
- State management: **Cubit** (`flutter_bloc`). Screens that just load data use `DataCubit<T>` / `AsyncContent` from `core/state` and `widget`.
- DI: `get_it` + `injectable` (`core/di`). Annotate classes with `@injectable` / `@lazySingleton` (`@LazySingleton(as: X)` for implementations) and regenerate. Screens get their cubit from `getIt` in the route builder.
- Navigation: `go_router` (`core/router`). Auth gating is a `redirect` driven by `AuthCubit` (`core/auth`): unknown -> splash, unauthenticated -> login, authenticated -> home.
- Auth: `AuthRepository` (`restoreSession`, `sessionChanges`, `signIn`, `signOut`). The mock persists the session unencrypted in `SharedPreferences` so the user stays signed in across restarts (demo login `student@berito.app` / `password`). Supabase will handle its own persistence.
- freezed is used for models and states. `bloc_presentation` is installed but not used yet.
- Current scope: splash, login, home.

## Conventions

### Naming

- Directory names are **singular** (`model`, `repository`, `screen`, `widget`, `constant`, `error`), and so are their barrels (`model/model.dart`).

### Barrel imports

- Every directory containing Dart files has a barrel named after the directory that exports all its contents, including the barrels of subdirectories: `home/cubit/cubit.dart` exports `home_cubit.dart` and `home_state.dart`; `home/home.dart` exports `home_screen.dart` and `cubit/cubit.dart`.
- Import across directories through the barrel, using `package:berito/...` (for example `package:berito/model/model.dart`), never a specific file inside another directory.
- Inside a directory (or from a child to its parent directory) import the specific file relatively, so barrels never import themselves.
- When adding, removing or renaming a file, update the barrel of its directory.
- A file must not share the name of its directory's barrel (hence `berito_app.dart` in `app/`).

### Models

- Models are `freezed` classes (`@freezed abstract class X with _$X`, `part 'x.freezed.dart'`), generated files are committed alongside. Regenerate after changing them.

### UI

- Prefer `adaptive_platform_ui` widgets (see the `adaptive-platform-ui` skill) over raw Material/Cupertino widgets.

## Git workflow
- After every change, commit with a Conventional Commits message (subject max 80 chars, e.g. `feat(login): add password visibility toggle`) and push to `origin main`.
- Keep generated files (`*.freezed.dart`, `injection.config.dart`) in the same commit as the change that produced them.

## Commands

- `flutter pub get`, `flutter analyze` (must stay clean), `flutter run`
- Code generation (once freezed/injectable are used): `fvm dart run build_runner build --delete-conflicting-outputs` (the Homebrew `dart` on PATH is too old, use `fvm dart`)
