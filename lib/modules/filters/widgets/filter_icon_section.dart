import '../../../app.dart';

class FilterIconSection extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> items;

  const FilterIconSection({
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
        ...items.map(
          (e) => FilterIconTile(
            title: e['title'],
            icon: e['icon'],
            onTap: () {
            
            },
          ),
        ),
        10.verticalSpace,
      ],
    );
  }
}