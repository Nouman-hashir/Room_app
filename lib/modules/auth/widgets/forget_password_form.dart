import '../../../app.dart';

class ForgetPasswordForm extends StatelessWidget {
  final VoidCallback? onContinue;
  const ForgetPasswordForm({super.key, this.onContinue});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Forget Password",
          style: AppTextStyles.headline3.copyWith(
            color: AppColors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        5.verticalSpace,
        Text(
          "Enter your email to reset your password",
          style: AppTextStyles.subtitle2,
        ),
        40.verticalSpace,
        Text(
          "Forget Password",
          style: AppTextStyles.headline3.copyWith(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w700,
          ),
        ),
        20.verticalSpace,
        CustomTextField(hint: "Enter your email here", icon: AppAssets.email),
        40.verticalSpace,
        CustomButton(text: "Continue", onTap: () {
            if (onContinue != null) {
              onContinue!();
            }
        }),
      ],
    );
  }
}
