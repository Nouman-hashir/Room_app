import 'package:room/app.dart';

class OtpVerificationScreen extends StatelessWidget {
  final VoidCallback? onVerify;
  const OtpVerificationScreen({super.key, this.onVerify});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "OTP Verification",
          style: AppTextStyles.headline3.copyWith(
            color: AppColors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        5.verticalSpace,
        Text("Enter the OTP sent to continue", style: AppTextStyles.subtitle2),
        32.verticalSpace,
        Text(
          "OTP Verification",
          style: AppTextStyles.headline2.copyWith(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w700,
          ),
        ),
        20.verticalSpace,
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: "We have sent an",
            style: AppTextStyles.subtitle2.copyWith(
              color: AppColors.black,
              fontSize: 12.sp,
            ),
            children: [
              TextSpan(
                text: " OTP ",
                style: AppTextStyles.subtitle2.copyWith(
                  color: AppColors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                ),
              ),
              TextSpan(
                text: "to your email",
                style: AppTextStyles.subtitle2.copyWith(
                  color: AppColors.black,
                  fontSize: 12.sp,
                ),
              ),
              TextSpan(
                text: "\ndolores.chambers@example.com",
                style: AppTextStyles.subtitle2.copyWith(
                  color: AppColors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                ),
              ),
              TextSpan(
                text: "\nEnter the code to verify",
                style: AppTextStyles.subtitle2.copyWith(
                  color: AppColors.black,
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
        ),
        42.verticalSpace,
        Pinput(length: 4,  showCursor: true, onCompleted: (pin) {}),
        32.verticalSpace,
        RichText(
          text: TextSpan(
            text: "Didn't receive code.",
            style: AppTextStyles.subtitle2.copyWith(
              color: AppColors.black,
              fontSize: 12.sp,
            ),
            children: [
              TextSpan(
                text: " Resend(40s)",
                style: AppTextStyles.subtitle2.copyWith(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
        ),
        42.verticalSpace,
        AppButtons.customButton(text: "Continue", onTap: () {
          context.pop();
        }),
      ],
    );
  }
}
