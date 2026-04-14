import '../../../app.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      showAppBar: true,
      showBack: false,
      title: "Notification",
      child: AppPadding(
        horizontal: 20,
        vertical: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Today',
              style: AppTextStyles.headline1.copyWith(
                fontSize: 18.sp,
                color: AppColors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            NotificationListItem(
              image: AppAssets.profileImage,
              name: "Usman Khan",
              text: " Intersected in your tour",
            ),
            10.verticalSpace,
            NotificationListItem(
              image: AppAssets.profile1,
              name: "ALi Khan",
              text: " Intersected in your tour",
              isshow: false,
            ),
          ],
        ),
      ),
    );
  }
}
