import '../../../app.dart';

class MotorhomesScreen extends StatelessWidget {
  const MotorhomesScreen({super.key});
  static final List<String> images = [
    AppAssets.bus,
    AppAssets.bus,
    AppAssets.bus,
    AppAssets.bus,
  ];

  static final List<String> names = [
    "Campervan",
    "Large Campervan",
    "Rooftop",
    "Overcab",
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      showAppBar: true,
      title: 'My Motorhomes',
      showBack: true,
      child: AppPadding(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "List your motorhome",
                style: AppTextStyles.headline2.copyWith(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              10.verticalSpace,
              Text(
                "Your motorhome's most important \ncharacteristics",
                style: AppTextStyles.subtitle2.copyWith(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              20.verticalSpace,
              GridView.builder(
                itemCount: images.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 40,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return MotoCharacteristics(
                    image: images[index],
                    title: names[index],
                  );
                },
              ),
              20.verticalSpace,
             MotorhomeFeatures(),
            ],
          ),
        ),
      ),
    );
  }
}
