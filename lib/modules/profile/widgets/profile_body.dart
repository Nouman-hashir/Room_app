import '../../../app.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Divider(color: AppColors.primaryColor, endIndent: 20, indent: 20),
        10.verticalSpace,
        ProfileTile(
          image: AppAssets.editProfile,
          title: "Edit Profile",
          onTap: () {
            context.push('/editprofile');
          },
        ),
        ProfileTile(
          image: AppAssets.notificationSvg,
          title: "Notification",
          isNotification: true,
        ),
         ProfileTile(image: AppAssets.privacy, title: "My MotorHome",onTap: () {
          context.push('/privacy');
        },),
        ProfileTile(image: AppAssets.privacy, title: "Privacy Policy",onTap: () {
          context.push('/privacy');
        },),
         
        ProfileTile(image: AppAssets.terms, title: "Terms & Conditions",onTap: () {
          context.push('/terms');
        }),
        ProfileTile(
          image: AppAssets.logout,
          title: "Logout",
          onTap: () {
            showDialog(context: context, builder: (context) => LogoutDialog());
          },
        ),
        ProfileTile(
          image: AppAssets.delete,
          title: "Delete Account",
          islast: true,
          onTap: () {
            showDialog(context: context, builder: (context) => DeleteDialog());
          },
        ),
      ],
    );
  }
}
