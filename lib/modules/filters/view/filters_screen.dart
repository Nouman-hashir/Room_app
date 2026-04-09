import 'package:room/app.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      showAppBar: true,
      showBack: true,
      title: 'Filters',
      subtitle: 'Reset',
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FilterSortSection(),
              20.verticalSpace,
              FilterPriceSection(),
              const FilterIconSection(
                title: "Motorhome Type",
                items: [
                  {"title": "Campervan", "icon": AppAssets.bus},
                  {"title": "Large Campervan", "icon": AppAssets.bus},
                  {"title": "Coachbuilt", "icon": AppAssets.bus},
                ],
              ),
              const FilterIconSection(
                title: "Living Area",
                items: [
                  {"title": "Airconditioning home area", "icon": AppAssets.bus},
                  {"title": "Awning", "icon": AppAssets.bus},
                  {"title": "Bike Career", "icon": AppAssets.bus},
                ],
              ),
              const FilterIconSection(
                title: "Cab Features",
                items: [
                  {"title": "Airbags", "icon": AppAssets.bus},
                  {"title": "Airconditioning in cabin", "icon": AppAssets.bus},
                  {"title": "Audio input", "icon": AppAssets.bus},
                ],
              ),
              const FilterCheckboxSection(
                title: "First Registration",
                items: [
                  "No Preferences",
                  "Less than 4 years ago",
                  "Less than 10 years ago",
                ],
              ),
              const FilterCheckboxSection(
                title: "Promotions",
                items: ["Last Minute Discount", "Extended period Discount"],
              ),
              const FilterCheckboxSection(
                title: "House rules",
                items: [
                  "Driver aged 30+",
                  "Unlimited Mileage",
                  "Smoking allowed",
                  "Festivals allowed",
                  "Mountains allowed",
                ],
              ),
              const FilterCheckboxSection(
                title: "Make",
                items: [
                  "Adria Mobil",
                  "Ahorn",
                  "Arca",
                  "Bailey",
                  "Auto sleepers",
                  "Autotrail",
                ],
              ),
              const FilterCheckboxSection(
                title: "Fuel type",
                items: ["Petrol", "Diesel", "LPG", "Electric", "Hybrid"],
              ),
              10.verticalSpace,
              AppButtons.customButton(text: "Show Results", onTap: () {}),
              100.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
