import '../../../app.dart';

class ChangePasswordForm extends StatelessWidget {
  final VoidCallback? onBack;
  const ChangePasswordForm({super.key, this.onBack});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Change Password",
          style: AppTextStyles.headline3.copyWith(
            color: AppColors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        5.verticalSpace,
        Text("Set your password to continue", style: AppTextStyles.subtitle2),
        40.verticalSpace,
        Text(
          "Change Password",
          style: AppTextStyles.headline3.copyWith(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w700,
          ),
        ),
        20.verticalSpace,
        ChangeNotifierProvider<TextfieldProvider>(
          create: (context) => TextfieldProvider(),
          child: CustomTextField(
            hint: "Enter new password here",
            icon: AppAssets.lockIcon,
            isPassword: true,
          ),
        ),
        20.verticalSpace,
        CustomTextField(
          hint: "Confirm new password here",
          icon: AppAssets.lockIcon,
          isPassword: true,
        ),
        40.verticalSpace,
        CustomButton(text: "Continue", onTap: () {
          context.pop();
        }),
        20.verticalSpace,
        GestureDetector(
          onTap: onBack,
          child: Text(
            "Back",
            style: AppTextStyles.subtitle2.copyWith(color: AppColors.primaryColor),
          ),
        )
      ],
    );
  }
}
