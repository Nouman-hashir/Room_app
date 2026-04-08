import '../../../app.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthBackground(
      height: 160,
      showBack: true,
      child: Consumer<LoginProvider>(
        builder: (context, provider, child) {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            transitionBuilder: (child, animation) {
              final offsetAnimation = Tween<Offset>(
                begin: const Offset(-1, 0),
                end: Offset.zero,
              ).animate(animation);
              return SlideTransition(position: offsetAnimation, child: child);
            },
            child: provider.isSignUp
                ? OtpVerificationScreen(
                    onVerify: () {
                     provider.toggleSignUp();
                    },
                  )
                : SignupForm(
                    loginProvider: provider,
                    onSignUp: () {
                      provider.toggleSignUp();
                    },
                  ),
          );
        },
      ),
    );
  }
}
