import 'package:room/app.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});
  static final List<String> vehicles = [
    AppAssets.car,
    AppAssets.car,
    AppAssets.car,

  ];

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "Favourites",
      showAppBar: true,
      showBack: false,
      backgroundColor: AppColors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => 20.verticalSpace,
                itemCount: vehicles.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => context.push('/details'),
                    child: VehicleListItem(
                      title: "Modern Super Cozy \nLeft HD",
                      image: vehicles[index],
                      isFavourite: true,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
