import 'package:room/app.dart';

class VehicleList extends StatelessWidget {
  const VehicleList({super.key});
  static final List<String> vehicles = [
    AppAssets.car,
    AppAssets.car,
    AppAssets.car,
    AppAssets.car,
    AppAssets.car,
    AppAssets.car,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => 20.verticalSpace,
      itemCount: vehicles.length,
      itemBuilder: (context, index) {
        return VehicleListItem(
          title: "Modern Super Cozy \nLeft HD",
          image: vehicles[index],
          onTap: () {
            context.push('/details');
          },
        );
      },
    );
  }
}
