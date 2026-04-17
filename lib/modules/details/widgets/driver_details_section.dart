import '../../../app.dart';

class DriverDetailsSection extends StatelessWidget {
  const DriverDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: AppColors.grey100,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap : () => context.push,
                child: Image.asset(AppAssets.profileImage, height: 50.h),
              ),
              10.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ahmed Ali",
                    style: AppTextStyles.headline1.copyWith(
                      fontSize: 13.sp,
                      color: AppColors.black,
                    ),
                  ),
                  Text(
                    "Member Since june 2022",
                    style: AppTextStyles.headline1.copyWith(
                      fontSize: 12.sp,
                      color: AppColors.black54,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  context.push('/messages', extra: {
                    'title': 'Ahmed Ali',
                    'image': AppAssets.profileImage
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(10.w),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    border: Border.all(color: AppColors.grey200),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Text(
                    'Send a message',
                    style: AppTextStyles.bodyText1.copyWith(
                      color: AppColors.black54,
                      fontSize: 10.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
          10.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => context.push('/reviews'),
                child: Row(
                  children: [
                    SvgPicture.asset(AppAssets.star, height: 12.h),
                    5.horizontalSpace,
                    Text(
                      "4.6/5 based on 81 reviews",
                      style: AppTextStyles.headline1.copyWith(
                        fontSize: 10.sp,
                        color: AppColors.black,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  SvgPicture.asset(AppAssets.messagenotify, height: 12.h),
                  5.horizontalSpace,
                  Text(
                    "Replies within an hour",
                    style: AppTextStyles.headline1.copyWith(
                      fontSize: 10.sp,
                      color: AppColors.black,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              ),
            ],
          ),
          10.verticalSpace,
          Row(
            children: [
              SvgPicture.asset(AppAssets.star, height: 12.h),
              5.horizontalSpace,
              Text(
                "Hired out 413 times",
                style: AppTextStyles.headline1.copyWith(
                  fontSize: 10.sp,
                  color: AppColors.black,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
