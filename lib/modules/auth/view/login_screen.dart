import '../../../app.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(children: [
        AuthHeader(),
        Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration:  BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(40.r)),
              ),
              child: Column(
                children: const [
                  LoginForm(),
                  SizedBox(height: 20),
                  // SocialLogin(),
                ],
              ),
            ),
          ),
      ],)
    );
  }
}