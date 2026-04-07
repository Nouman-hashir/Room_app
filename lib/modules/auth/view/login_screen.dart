import '../../../app.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          AuthHeader(),
          Expanded(
            child: Container(
              padding:  EdgeInsets.all(20.w),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(40.r)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children:  [
                    LoginForm(),
                    25.verticalSpace,
                    SocialLogin(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
