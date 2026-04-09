import '../../../app.dart';

class FilterPriceSection extends StatefulWidget {
  const FilterPriceSection({super.key});

  @override
  State<FilterPriceSection> createState() => _FilterPriceSectionState();
}
RangeValues values = const RangeValues(25, 100);
class _FilterPriceSectionState extends State<FilterPriceSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Daily Rate'),
            5.horizontalSpace,
             Text("\$${values.start.round()} - \$${values.end.round()}"),
          ],
        ),
        5.verticalSpace,
        RangeSlider(
          values: values,
          min: 0,
          max: 500,
          onChanged: (val) {
            setState(() => values = val);
          },
          activeColor: AppColors.primaryColor,
        ),
        
      ],
    );
  }
}