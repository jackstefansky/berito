---
name: adaptive-platform-ui
description: Use when building or editing Flutter UI with the adaptive_platform_ui package (AdaptiveApp, AdaptiveScaffold, AdaptiveAppBar, AdaptiveBottomNavigationBar, AdaptiveButton, dialogs, pickers, form fields, PlatformInfo). Covers setup, iOS 26 Liquid Glass native toolbar/tab bar, and per-widget API usage. Prefer these widgets over raw Material/Cupertino widgets in this project.
---

# adaptive_platform_ui (v1.0.x)

Widgets that render native iOS 26+ (Liquid Glass, UIKit platform views), Cupertino on iOS 18 and below, and Material 3 on Android. Platform detection is automatic. Source: https://pub.dev/packages/adaptive_platform_ui (full README is in `~/.pub-cache/hosted/pub.dev/adaptive_platform_ui-*/README.md`).

```dart
import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';
```

## Setup

- `pubspec.yaml`: `adaptive_platform_ui: ^1.0.1` (Dart SDK ^3.9.2).
- **iOS deployment target must be 15.0+**: `platform :ios, '15.0'` in `ios/Podfile`, also set in Xcode Runner target, then `pod install`.
- Use `AdaptiveApp` (or `AdaptiveApp.router` for GoRouter etc.) as the root:

```dart
AdaptiveApp(
  title: 'My App',
  themeMode: ThemeMode.system,
  materialLightTheme: ThemeData.light(),
  materialDarkTheme: ThemeData.dark(),
  cupertinoLightTheme: const CupertinoThemeData(brightness: Brightness.light),
  cupertinoDarkTheme: const CupertinoThemeData(brightness: Brightness.dark),
  localizationsDelegates: [
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate, // required for translated pickers/buttons
    GlobalWidgetsLocalizations.delegate,
  ],
  supportedLocales: [Locale('en', ''), Locale('pl', '')],
  home: const HomePage(),
)
// Router: AdaptiveApp.router(routerConfig: router, ...same theme args)
```

Without the localization delegates, date/time pickers show English regardless of system language.

Not using `AdaptiveApp`? Wrap the navigator once:
`MaterialApp(builder: (context, child) => AdaptiveToolbarHost(child: child!))`.

## Scaffold, app bar, bottom bar

```dart
AdaptiveScaffold(
  appBar: AdaptiveAppBar(
    title: 'My App',
    useNativeToolbar: true, // iOS 26 UIToolbar w/ Liquid Glass
    actions: [
      AdaptiveAppBarAction(
        iosSymbol: 'gear',      // SF Symbol name (iOS)
        icon: Icons.settings,   // Android
        label: 'Settings',      // overflow menu / VoiceOver / tooltip - always set for icon actions
        onPressed: () {},
      ),
    ],
  ),
  bottomNavigationBar: AdaptiveBottomNavigationBar(
    useNativeBottomBar: true, // default; native UITabBar
    items: [
      AdaptiveNavigationDestination(icon: 'house.fill', label: 'Home'),
      AdaptiveNavigationDestination(icon: 'person.fill', label: 'Profile'),
    ],
    selectedIndex: 0,
    onTap: (index) {},
  ),
  body: YourContent(),
)
```

- Null `appBar` / `bottomNavigationBar` hides them. Custom bars take priority over auto-generated ones.
- **Fixed toolbar (iOS 26+)**: `AdaptiveApp` keeps one toolbar above the navigator; pages slide under it and only items change. Works with any router. Each `AdaptiveScaffold` publishes its app bar on appear. iPhone Duo: toolbar and tab bar move to the side strip; overflowing items go to the system overflow menu.
- Scaffold that does not start at the screen top (e.g. one pane of a split layout): `AdaptiveScaffold(useFixedToolbar: false, ...)`. Sheets/dialogs do this automatically.
- Custom `leading` / `titleWidget` / `iconWidget` are built above the navigator: use the **page's** `context` for `Navigator.of(context)`, not the widget's own.
- `useHeroBackButton` has no effect with the fixed toolbar. Pages pushed without `AdaptiveScaffold` show no toolbar.

## Widgets

**AdaptiveButton** — `AdaptiveButton(onPressed:, label:)`, `.child(child:)`, `.icon(icon:)`. Params: `style: AdaptiveButtonStyle.{filled,tinted,gray,bordered,plain}`, `size: AdaptiveButtonSize.{small,medium,large}` (28/36/44pt iOS), `color`, `padding`, `borderRadius`, `minSize`, `enabled`.

**AdaptiveAlertDialog.show** — `context, title, message, icon (SF symbol), actions: [AlertAction(title:, style: AlertActionStyle.cancel|primary, onPressed:)]`, optional `input: AdaptiveAlertDialogInput(placeholder:, initialValue:, keyboardType:)`; returns the entered text (nullable).

**AdaptiveContextMenu** — `actions: [AdaptiveContextMenuAction(title:, icon:, isDestructive:, onPressed:)]`, `child:`. iOS CupertinoContextMenu / Android PopupMenuButton.

**AdaptivePopupMenuButton** — `.text<T>(label:)`, `.icon<T>(icon: 'ellipsis.circle', buttonStyle: PopupButtonStyle.glass)`, `.widget<T>(child:)`. `items: [AdaptivePopupMenuItem(label:, icon: iOS26 ? 'pencil' : Icons.edit, value:), AdaptivePopupMenuDivider()]`, `onSelected: (index, item) {}`.

**AdaptiveSegmentedControl** — `labels:`, `selectedIndex:`, `onValueChanged:`; icons via `labels: [], sfSymbols: [...], iconColor:`.

**AdaptiveSwitch** `(value, onChanged)` · **AdaptiveSlider** `(value, onChanged, min, max)` · **AdaptiveCheckbox** `(value, onChanged, tristate)` · **AdaptiveRadio<T>** `(value, groupValue, onChanged)`.

**AdaptiveCard** — `padding, color, borderRadius, elevation (Android only), child`.

**AdaptiveBadge** — `count:` or `label:`, `backgroundColor`, `isLarge`, `child`.

**AdaptiveTooltip** — `message, preferBelow, child`.

**AdaptiveSnackBar.show(context, message:, type: AdaptiveSnackBarType.{info,success,warning,error}, action:, onActionPressed:, duration:)** — iOS top banner, Android bottom SnackBar.

**AdaptiveDatePicker.show(context:, initialDate:, firstDate:, lastDate:, mode: CupertinoDatePickerMode.*)** → `DateTime?`. **AdaptiveTimePicker.show(context:, initialTime:, use24HourFormat:)** → `TimeOfDay?`.

**AdaptiveListTile** — `leading, title, subtitle, trailing, selected, hideBottomDivider (iOS, use on last item), onTap`.

**AdaptiveTextField** — `placeholder, onChanged, prefixIcon, suffixIcon, obscureText, maxLines, minLines, keyboardType`. **AdaptiveTextFormField** — same plus `validator`, `onSaved`; use inside `Form`.

**AdaptiveFloatingActionButton** — `onPressed, child, mini, backgroundColor, foregroundColor`.

**AdaptiveFormSection** / `.insetGrouped` — `header, footer, children` (children are typically `CupertinoFormRow(prefix:, child:)`).

**AdaptiveExpansionTile** — `title, leading, subtitle, initiallyExpanded, backgroundColor, iconColor, onExpansionChanged, children`.

**AdaptiveTabBarView** — `tabs: ['A','B'], children: [...], onTabChanged`. Top swipeable tabs (iOS segmented control / Material TabBar).

**IOS26NativeSearchTabBar** (EXPERIMENTAL, iOS 26+) — replaces Flutter's root view controller with a UITabBarController; breaks Navigator, lifecycle, hot reload, state management. Prototypes only, never production. Don't confuse with `AdaptiveBottomNavigationBar`.

## PlatformInfo

`PlatformInfo.isIOS`, `.isAndroid`, `.isIOS26OrHigher()`, `.isIOS18OrLower()`, `.iOSVersion` (int), `.isIOSVersionInRange(a, b)`, `.platformDescription`. Use it to pick SF Symbol strings (iOS 26) vs `IconData` (elsewhere), e.g. `icon: PlatformInfo.isIOS26OrHigher() ? 'trash' : Icons.delete`.

## Conventions

- Icons on iOS 26 native widgets are SF Symbol **strings**; Material fallbacks are `IconData`. Widgets that take both (`AdaptiveAppBarAction`) want both.
- Native iOS 26 widgets are UIKit platform views: they only render on real iOS 26+ devices/simulators, not on Android or older iOS (those get Cupertino/Material fallbacks).
- Give every icon-only action a `label`.
