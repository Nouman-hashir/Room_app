import 'package:room/app.dart';

class TripsScreen extends StatelessWidget {
  const TripsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgroundColor: AppColors.white,
      child: Center(
        child: Text("Trips Screen", style: AppTextStyles.headline2),
      ),
    );
  }
}
