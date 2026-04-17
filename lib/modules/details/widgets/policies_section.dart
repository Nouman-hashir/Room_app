import '../../../app.dart';

class PoliciesSection extends StatelessWidget {
  const PoliciesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
