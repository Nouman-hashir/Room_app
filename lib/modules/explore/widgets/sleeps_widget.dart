import '../../../app.dart';

class SleepsWidget extends StatelessWidget {
  final String sleeps;
  final String title;
  const SleepsWidget({super.key, required this.sleeps, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      children: [
        Row(
          children: [
            Checkbox(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              value: false,
              checkColor: AppColors.white,
              activeColor: AppColors.primaryColor,
              side: BorderSide(color: AppColors.primaryColor, width: 1.w),
              onChanged: (value) {},
            ),
            Text(
              title,
              style: AppTextStyles.subtitle2.copyWith(color: AppColors.black),
            ),
            Spacer(),
            Text(
              sleeps,
              style: AppTextStyles.subtitle2.copyWith(color: AppColors.black),
            ),
          ],
        ),
        Divider(
          thickness: 1.h,
          color: AppColors.grey200,
        ),
      ],
    );
  }
}
