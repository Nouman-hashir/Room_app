import 'package:room/app.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgroundColor: AppColors.white,
      child: Center(
        child: Text("Favourites Screen", style: AppTextStyles.headline2),
      ),
    );
  }
}
