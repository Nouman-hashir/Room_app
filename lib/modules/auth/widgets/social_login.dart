import 'package:dotted_line/dotted_line.dart';
import 'package:room/app.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Expanded(
              child: DottedLine(
                dashLength: 8,
                dashGapLength: 5,
                lineThickness: 0.35,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.h),
              child: Text(
                "Or",
                style: AppTextStyles.subtitle2.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ),
            const Expanded(
              child: DottedLine(
                dashLength: 8,
                dashGapLength: 5,
                lineThickness: 0.35,
              ),
            ),
          ],
        ),
        20.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.facebookIcon, width: 30.w, height: 25.h),
            30.horizontalSpace,
            Image.asset(AppAssets.googleIcon, width: 30.w, height: 25.h),
          ],
        ),

        40.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account? ",
              style: AppTextStyles.bodyText1.copyWith(
                fontSize: 12.sp,
                color: AppColors.black,
              ),
            ),
            2.horizontalSpace,
            GestureDetector(
              onTap: () {
                context.pushNamed(Routes.signup.name);
              },
              child: Text(
                "Signup",
                style: AppTextStyles.bodyText1.copyWith(
                  fontSize: 12.sp,
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
