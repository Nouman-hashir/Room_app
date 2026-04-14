import 'package:room/app.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      showAppBar: true,
      showBack: true,
      title: "Terms & Conditions",
      child: AppPadding(
        horizontal: 30,
        child: Column(
          children: [
            20.verticalSpace,
            Text(
              "Welcome to When In Roam! By using our app, you agree to the following terms and conditions. The app provides travel recommendations, local guides, and curated itineraries to enhance your travel experience. All information and services are offered as-is, and we strive to ensure accuracy but do not guarantee completeness or reliability. Users are responsible for verifying travel details and adhering to local laws and regulations. Any personal data collected is used in accordance with our Privacy Policy. Unauthorized use of the app, including misuse of content or tampering with the platform, is strictly prohibited. When In Roam reserves the right to modify or discontinue services at any time. By continuing to use the app, you accept these terms. If you have questions or concerns, please contact our support team.",
              style: AppTextStyles.subtitle2.copyWith(
                color: AppColors.grey700,
                fontWeight: FontWeight.w400,
                fontSize: 15.sp,
                letterSpacing: 0.3,
                height: 1.6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
