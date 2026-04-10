import '../../../app.dart';

class FilterCheckboxSection extends StatelessWidget {
  final String title;
  final List<String> items;

  const FilterCheckboxSection({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FilterSectionTitle(title: title),
        ...items.map((e) 
        => FilterCheckboxTile(title: e)),
        10.verticalSpace,
      ],
    );
  }
}