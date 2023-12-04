import 'package:go_router/go_router.dart';
import 'package:models/screens/auth/auth_screen.dart';
import 'package:models/screens/main_screen.dart';

abstract class Routes {
  static List<RouteBase> routes = [
    GoRoute(
      path: "/",
      builder: (context, state) => const AuthScreen(),
    ),
    GoRoute(
      path: "/main",
      builder: (context, state) => const MainScreen(),
    ),
  ];
}
