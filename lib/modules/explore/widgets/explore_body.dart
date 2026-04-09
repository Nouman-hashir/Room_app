import 'package:room/app.dart';

class ExploreBody extends StatelessWidget {
  const ExploreBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(hint: "Enter a city", icon: AppAssets.location),
          20.verticalSpace,
          Row(
            children: [
              Expanded(
                child: CustomDropdown<String>(
                  hintText: "Dates",
                  items: const [],
                  isCustom: true,
                  prefixIcon: AppAssets.dateIcon,
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (_) =>
                          Wrap(children: const [DateSelectionSheet()]),
                    );
                  },
                  value: null,
                  onChanged: (value) {},
                ),
              ),
              10.horizontalSpace,
              Expanded(
                child: CustomDropdown<String>(
                  hintText: "Beds",
                  items: const [],
                  isCustom: true,
                  prefixIcon: AppAssets.bedIcon,
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (_) => const BedBottomSheet(),
                    );
                  },
                  value: null,
                  onChanged: (value) {},
                ),
              ),
            ],
          ),
          20.verticalSpace,
          AppButtons.customIconButton(width: 60, onTap: () {
            context.pushNamed(Routes.filter.name);
          }),
          20.verticalSpace,
          Expanded(child: VehicleList()),
        ],
      ),
    );
  }
}
