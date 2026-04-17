// ignore_for_file: use_build_context_synchronously
import '../../../app.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

 void initState() {
    super.initState();

    Future.microtask(() async {
      final provider = context.read<SplashProvider>();
      await provider.init(context);

      if (mounted) {
        context.push('/login');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgroundColor: AppColors.primaryColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.splashIcon, width: 140.w, height: 140.h),
          ],
        ),
      ),
    );
  }
}
