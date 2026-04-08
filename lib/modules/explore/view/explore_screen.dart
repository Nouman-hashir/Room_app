import 'package:room/app.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgroundColor: AppColors.white,
      child: Center(
        child: Text("Explore Screen", style: AppTextStyles.headline2),
      ),
    );
  }
}
