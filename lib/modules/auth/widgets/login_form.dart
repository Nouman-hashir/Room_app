import '../../../app.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Login",
          style: AppTextStyles.headline3.copyWith(color: AppColors.black,
              fontWeight: FontWeight.w500),
        ),
        5.verticalSpace,
        Text("Login to your account", style: AppTextStyles.subtitle2),
        20.verticalSpace,
        CustomTextField(
          hint: "Enter your email here",
          icon: 'assets/images/email.png',
        ),
        20.verticalSpace,
        CustomTextField(
          hint: "Password",
          icon: 'assets/images/lock_icon.png',
          isPassword: true,
        ),
        10.verticalSpace,
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {},
            child: Text(
              "Forgot password?",
              style: AppTextStyles.subtitle2.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ),
        10.verticalSpace,
        CustomButton(text: "Login", onTap: () {}),
      ],
    );
  }
}
