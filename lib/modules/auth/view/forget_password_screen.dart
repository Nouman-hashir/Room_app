import '../../../app.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ForgetPasswordProvider(),
      child: AuthBackground(
        showBack: true,
        height: 260,
        child: Consumer<ForgetPasswordProvider>(
          builder: (context, provider, _) {
            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 250),
              transitionBuilder: (child, animation) {
                final offsetAnimation = Tween<Offset>(
                  begin: const Offset(-1, 0), 
                  end: Offset.zero, 
                ).animate(animation);
                return SlideTransition(position: offsetAnimation, child: child);
              },
              child: provider.showForgetPassword
                  ? ForgetPasswordForm(
                      key: const ValueKey('forget'),
                      onContinue: () => provider.showChangePassword(),
                    )
                  : ChangePasswordForm(
                      key: const ValueKey('change'),
                      onBack: () => provider.showForget(),
                    ),
            );
          },
        ),
      ),
    );
  }
}
