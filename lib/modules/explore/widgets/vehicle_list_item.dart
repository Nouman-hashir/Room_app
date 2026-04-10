import '../../../app.dart';

class VehicleListItem extends StatelessWidget {
  final String title;
  final String image;
  final bool isFavourite;
  final bool istrip;
  const VehicleListItem({
    super.key,
    required this.title,
    required this.image,
    this.isFavourite = false,
    this.istrip = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: AppColors.grey50,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image, height: 80.h, width: 100.w),
          30.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyles.headline2.copyWith(
                  fontSize: 12.sp,
                  color: AppColors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 5.h),
              if (isFavourite)
                Container(
                  margin: EdgeInsets.only(left: 40),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 5.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(color: AppColors.grey200),
                  ),
                  child: Row(
                    children: [
                      Image.asset(AppAssets.heart, height: 12.h, width: 12.w),
                      5.horizontalSpace,
                      Text(
                        "Add to favourites",
                        style: AppTextStyles.subtitle2.copyWith(
                          color: AppColors.primaryColor,
                          fontSize: 10.sp,
                        ),
                      ),
                    ],
                  ),
                )
              else if (istrip)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(AppAssets.tick, height: 12.h, width: 12.w),
                        5.horizontalSpace,
                        Text(
                          "License plate & MOT verified",
                          style: AppTextStyles.subtitle2.copyWith(
                            color: AppColors.black,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(AppAssets.tick, height: 12.h, width: 12.w),
                        5.horizontalSpace,
                        Text(
                          "First registartion in 2020",
                          style: AppTextStyles.subtitle2.copyWith(
                            color: AppColors.black,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              else
                const SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}
