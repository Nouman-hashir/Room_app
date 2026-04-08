import 'package:room/app.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgroundColor: AppColors.white,
      child: Center(
        child: Text("Profile Screen", style: AppTextStyles.headline2),
      ),
    );
  }
}
