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
            20.verticalSpace,
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5.w),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    shape: BoxShape.circle,
                  ),
                ),
                20.horizontalSpace,
                Image.asset(AppAssets.profileImage, height: 40.h),
                20.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ALi Khan inersected in your tour",
                      style: AppTextStyles.bodyText1.copyWith(
                        fontSize: 12.sp,
                        color: AppColors.grey,
                      ),
                    ),
                    Text(
                      "2 hour ago",
                      style: AppTextStyles.bodyText1.copyWith(
                        fontSize: 12.sp,
                        color: AppColors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            10.verticalSpace,
            Divider(endIndent: 20, indent: 20),
               10.verticalSpace,
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5.w),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    shape: BoxShape.circle,
                  ),
                ),
                20.horizontalSpace,
                Image.asset(AppAssets.profile1, height: 40.h),
                20.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Usman Khan inersected in your tour",
                      style: AppTextStyles.bodyText1.copyWith(
                        fontSize: 12.sp,
                        color: AppColors.grey,
                      ),
                    ),
                    Text(
                      "2 hour ago",
                      style: AppTextStyles.bodyText1.copyWith(
                        fontSize: 12.sp,
                        color: AppColors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
