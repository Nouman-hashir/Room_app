import '../../../app.dart';

class ExploreHeader extends StatelessWidget {
  const ExploreHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
      child: Row(
        children: [
          GestureDetector(
              onTap: () => context.read<BottomNavProvider>().updateIndex(4),
            child: Image.asset(AppAssets.profileImage, height: 40.h)),
          10.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back!",
                style: AppTextStyles.bodyText1.copyWith(
                  fontSize: 12.sp,
                  color: AppColors.grey,
                ),
              ),
              Text(
                "Kristin Waston",
                style: AppTextStyles.headline1.copyWith(
                  fontSize: 13.sp,
                  color: AppColors.black,
                ),
              ),
            ],
          ),
          const Spacer(),
          Stack(
            children: [
              GestureDetector(
                onTap: () => context.push('/notification'),
                child: Image.asset(AppAssets.notification, height: 20.h),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  height: 8.h,
                  width: 8.w,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
