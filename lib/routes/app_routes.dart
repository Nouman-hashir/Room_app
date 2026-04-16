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
      GoRoute(
        path: '/signup',
        name: Routes.signup.name,
        builder: (context, state) => const SignupScreen(),
      ),
      GoRoute(
        path: '/forgetpassword',
        name: Routes.forgetpassword.name,
        builder: (context, state) => const ForgetPasswordScreen(),
      ),
      GoRoute(
        path: '/bottomnav',
        name: Routes.bottomNav.name,
        builder: (context, state) => const BottomNavScreen(),
      ),
      GoRoute(
        path: '/filter',
        name: Routes.filter.name,
        builder: (context, state) => const FiltersScreen(),
      ),
      GoRoute(
        path: '/messages',
        name: Routes.messages.name,
        builder: (context, state) {
          final extras = state.extra as Map<String, dynamic>?;
          final title = extras?['title'];
          final image = extras?['image'];
          return MessagesScreen(title: title, image: image);
        },
      ),
      GoRoute(
        path: '/editprofile',
        name: Routes.editprofile.name,
        builder: (context, state) => const EditProfileScreen(),
      ),
      GoRoute(
        path: '/notification',
        name: Routes.notifications.name,
        builder: (context, state) => const NotificationsScreen(),
      ),
      GoRoute(
        path: '/privacy',
        name: Routes.privacy.name,
        builder: (context, state) => const PrivacyPolicyScreen(),
      ),
      GoRoute(
        path: '/terms',
        name: Routes.terms.name,
        builder: (context, state) => const TermsAndConditionsScreen(),
      ),
      GoRoute(
        path: '/details',
        name: Routes.details.name,
        builder: (context, state) => const DetailsScreen(),
      ),
      GoRoute(
        path: '/motorhome',
        name: Routes.motorhome.name,
        builder: (context, state) => const MotorhomesScreen(),
      ),
    ],
  );
}
