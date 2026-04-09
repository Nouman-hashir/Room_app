import '../../../app.dart';

class FilterCheckboxTile extends StatefulWidget {
  final String title;

  const FilterCheckboxTile({super.key, required this.title});

  @override
  State<FilterCheckboxTile> createState() => _FilterCheckboxTileState();
}

class _FilterCheckboxTileState extends State<FilterCheckboxTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      contentPadding: EdgeInsets.zero,
      activeColor: AppColors.primaryColor,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title),
           10.verticalSpace,
          Divider(thickness: 1.h, color: AppColors.grey200),
        ],
      ),
      value: isChecked,
      onChanged: (val) {
        setState(() => isChecked = val ?? false);
      },
      controlAffinity: ListTileControlAffinity.leading,
    );
  }
}