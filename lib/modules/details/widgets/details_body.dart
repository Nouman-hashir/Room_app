import '../../../app.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Modern super cosy Left HD.",
          style: AppTextStyles.headline1.copyWith(
            color: AppColors.black,
            fontSize: 18.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        VehicleDetails(),
        10.verticalSpace,
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: 160.w,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(16.r),
              border: Border.all(color: AppColors.grey200),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.favorite_border_outlined,
                  color: AppColors.primaryColor,
                  size: 15.sp,
                ),
                5.horizontalSpace,
                Text(
                  "Add to favourites",
                  style: AppTextStyles.subtitle2.copyWith(
                    color: AppColors.primaryColor,
                    fontSize: 13.sp,
                  ),
                ),
              ],
            ),
          ),
        ),
        30.verticalSpace,
        CustomTextField(hint: 'Start and end date', icon: AppAssets.dateIcon),
        10.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Daily Rate',
              style: AppTextStyles.headline1.copyWith(
                fontSize: 12.sp,
                fontWeight: FontWeight.w300,
                color: AppColors.black,
              ),
            ),
            Text(
              'from \$200',
              style: AppTextStyles.headline1.copyWith(
                fontSize: 12.sp,
                fontWeight: FontWeight.w300,
                color: AppColors.black,
              ),
            ),
          ],
        ),
        30.verticalSpace,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12,
          children: [
            Row(
              children: [
                Image.asset(AppAssets.tick, height: 12.h, width: 12.w),
                5.horizontalSpace,
                Text(
                  "Make a request without obligation",
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
                  "Working towards greener road trips",
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
                  "24/7 roadside assistance",
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
                  "Easy payment with all major debit and credit cards",
                  style: AppTextStyles.subtitle2.copyWith(
                    color: AppColors.black,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ],
        ),
        40.verticalSpace,
        AppButtons.customButton(
          onTap: () {},
          text: 'Request to book',
          color: AppColors.primaryColor,
        ),
      ],
    );
  }
}
