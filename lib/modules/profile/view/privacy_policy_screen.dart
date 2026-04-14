import 'package:room/app.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      showAppBar: true,
      showBack: true,
      title: "Privacy Policy",
      child: AppPadding(
        horizontal: 30,
        child: Column(
          children: [
            20.verticalSpace,
            Text(
              "At When In Roam, we are dedicated to protecting your privacy and ensuring the security of your personal information. Our app collects data, such as your location, preferences, and travel activities, solely to enhance your experience and provide personalized recommendations. We do not share your data with third parties without your explicit consent, except as required by law. All information is securely stored and encrypted to safeguard against unauthorized access. By using When In Roam,"
              " you agree to our practices aimed at delivering a seamless and secure travel experience. For any questions or concerns about your privacy, please contact our support team.",
              style: AppTextStyles.subtitle2.copyWith(
                color: AppColors.grey700,
                fontWeight: FontWeight.w400,
                fontSize: 15.sp,
                letterSpacing: 0.7,
                height: 1.7,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
