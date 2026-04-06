import '../app.dart';

class AppRouter {
  static final router = GoRouter(
    navigatorKey: navigatorKey,
    debugLogDiagnostics: true,
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: Routes.splash.name,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/login',
        name: Routes.login.name,
        builder: (context, state) => const LoginScreen(),
      ),
    ],
  );
}
