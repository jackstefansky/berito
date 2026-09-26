abstract final class AppRoute {
  static const splash = '/splash';
  static const login = '/login';
  static const home = '/home';
  static const study = '/study';
  static const assignment = '/assignment';
  static const backpack = '/backpack';
  static const more = '/more';
  static const classDetail = '/class/:id';

  static String classDetailPath(String id) => '/class/$id';
}
