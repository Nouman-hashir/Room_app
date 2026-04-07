import '../../../app.dart';

class SignupForm extends StatelessWidget {
  final VoidCallback? onSignUp;
  final LoginProvider loginProvider;
  const SignupForm({super.key, this.onSignUp, required this.loginProvider});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "SignUp",
          style: AppTextStyles.headline3.copyWith(
            color: AppColors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        5.verticalSpace,
        Text("Enter your details here", style: AppTextStyles.subtitle2),
        20.verticalSpace,
        CustomTextField(hint: "Name", icon: AppAssets.email),
        20.verticalSpace,
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.grey300, width: 0.75.w),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: DropdownFlutter<String>(
            hintText: 'United States',
            items: [
              'Pakistan',
              'England',
              'Australia',
              'India',
              'United States',
            ],
            decoration: CustomDropdownDecoration(
              prefixIcon: SizedBox(
                width: 18.w,
                height: 18.h,
                child: Image.asset(AppAssets.country),
              ),
            ),
            onChanged: (value) {},
          ),
        ),
        20.verticalSpace,
        CustomTextField(hint: "Email", icon: AppAssets.email),
        20.verticalSpace,
        CustomTextField(hint: "Phone Number", icon: AppAssets.callIcon),
        20.verticalSpace,
        ChangeNotifierProvider(
          create: (_) => TextfieldProvider(),
          child: CustomTextField(
            hint: "Password",
            icon: AppAssets.lockIcon,
            isPassword: true,
          ),
        ),
        20.verticalSpace,
        CustomTextField(
          hint: "Confirm Password",
          icon: AppAssets.lockIcon,
          isPassword: true,
        ),
        20.verticalSpace,
        Row(
          children: [
            Checkbox(
              value: loginProvider.isChecked,
              checkColor: AppColors.white, 
              activeColor: AppColors.primaryColor,
              onChanged: (value) {
                loginProvider.toggleCheckbox(value);
              },
            ),
            RichText(
              text: TextSpan(
                text: "I agree to the ",
                style: AppTextStyles.subtitle2.copyWith(
                  color: AppColors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 13.sp,
                ),
                children: [
                  TextSpan(
                    text: "Privacy Policy",
                    style: AppTextStyles.subtitle2.copyWith(
                      color: AppColors.primaryColor,
                      fontSize: 13.sp,
                      
                    ),
                  ),
                  TextSpan(
                    text: " & ",
                    style: AppTextStyles.subtitle2.copyWith(
                      color: AppColors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 13.sp,
                    ),
                  ),
                  TextSpan(
                    text: "Terms and \nConditions",
                    style: AppTextStyles.subtitle2.copyWith(
                      color: AppColors.primaryColor,
                      fontSize: 13.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        10.verticalSpace,
        CustomButton(
          text: "SignUp",
          onTap: () {
            if (onSignUp != null) {
              onSignUp!();
            }
          },
        ),
        10.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account? ",
              style: AppTextStyles.bodyText1.copyWith(
                fontSize: 12.sp,
                color: AppColors.black,
              ),
            ),
            2.horizontalSpace,
            GestureDetector(
              onTap: () {
                context.pushNamed(Routes.login.name);
              },
              child: Text(
                "LogIn",
                style: AppTextStyles.bodyText1.copyWith(
                  fontSize: 12.sp,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
