import 'package:room/app.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgroundColor: AppColors.white,
      child: Center(
        child: Text("Messages Screen", style: AppTextStyles.headline2),
      ),
    );
  }
}
