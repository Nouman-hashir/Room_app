import 'package:room/app.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      showAppBar: true,
      showBack: false,
      title: "Profile",
      child: AppPadding(
        child: Column(
          children: [
            20.verticalSpace,
            ProfileHeader(),
            20.verticalSpace,
            ProfileBody(),
          ],
        ),
      ),
    );
  }
}
