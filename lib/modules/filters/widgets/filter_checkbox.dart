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
    return Consumer<FilterProvider>(
      builder: (context, provider, child) {
        return CheckboxListTile(
        contentPadding: EdgeInsets.zero,
        activeColor: AppColors.primaryColor,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.title,
                style: AppTextStyles.bodyText1.copyWith(
                  color: AppColors.black,
                  fontSize: 13.sp,
            )),
          ],
        ),
        value: provider.isSelected(widget.title),
        onChanged: (val) {
          provider.toggleCheckbox(widget.title, val ?? false);
        },
        controlAffinity: ListTileControlAffinity.leading,
      );
      },
    );
  }
}