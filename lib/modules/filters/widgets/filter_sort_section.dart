import '../../../app.dart';

class FilterSortSection extends StatelessWidget {
  const FilterSortSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Sort by'),
        5.verticalSpace,
        CustomDropdown(
          hintText: 'Popularity',
          items: ['Lowest Price', 'Highest Price', 'Distance'],
          onChanged: (value) {},
        ),
      ],
    );
  }
}
