import 'app.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => SplashProvider(),
          ),
           ChangeNotifierProvider(create: (_) => TextfieldProvider(),
          ),
          ChangeNotifierProvider(create: (_) => ForgetPasswordProvider(),
          ),
          ChangeNotifierProvider(create: (_) => LoginProvider(),
          ),
         ChangeNotifierProvider(create: (_) => BottomNavProvider(),
          ),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Room',
          routerConfig: AppRouter.router,
        ),
      ),
    );
  }
}

