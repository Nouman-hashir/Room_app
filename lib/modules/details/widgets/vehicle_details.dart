import '../../../app.dart';

class VehicleDetails extends StatelessWidget {
  const VehicleDetails({super.key});

  static final List<String> vehicles = [
    AppAssets.bus,
    AppAssets.bus,
    AppAssets.bike,
    AppAssets.bike,
  ];

  static final List<String> titles = [
    "Bus",
    "Car",
    "Bike",
    "2 Seats ",
  ];

  @override
  Widget build(BuildContext context) {
    return AppPadding(
      horizontal: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          vehicles.length,
          (index) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(12.w),
                decoration: BoxDecoration(
                  color: AppColors.grey100,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(vehicles[index], height: 15.h, width: 15.w),
              ),
              5.verticalSpace,
              Text(
                titles[index],
                style: AppTextStyles.bodyText1.copyWith(
                  color: AppColors.black,
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
