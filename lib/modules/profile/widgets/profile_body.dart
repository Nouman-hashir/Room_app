import '../../../app.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Divider(color: AppColors.primaryColor, endIndent: 20, indent: 20,),
        10.verticalSpace,
        ProfileTile(image: AppAssets.editProfile, title: "Edit Profile"),
        ProfileTile(image: AppAssets.notificationSvg, title: "Notification", isNotification: true,),
        ProfileTile(image: AppAssets.privacy, title: "Privacy Policy"),
        ProfileTile(image: AppAssets.terms, title: "Terms & Conditions"),
        ProfileTile(image: AppAssets.logout, title: "Logout"),
        ProfileTile(image: AppAssets.delete, title: "Delete Account" ,islast: true,),
      ],
    );
  }
}
