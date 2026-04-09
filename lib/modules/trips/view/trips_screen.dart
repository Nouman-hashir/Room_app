import 'package:room/app.dart';

class TripsScreen extends StatelessWidget {
  const TripsScreen({super.key});
  static final List<String> vehicles = [
    AppAssets.car,
    AppAssets.car,
    AppAssets.car,
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backgroundColor: AppColors.white,
      title: 'Trips',
      showAppBar: true,
      showBack: false,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => 20.verticalSpace,
                itemCount: vehicles.length,
                itemBuilder: (context, index) {
                  return VehicleListItem(
                    title: "Modern Super Cozy \nLeft HD",
                    image: vehicles[index],
                    istrip: true,
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
