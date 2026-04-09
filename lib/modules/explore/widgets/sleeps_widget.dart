import '../../../app.dart';

class SleepsWidget extends StatefulWidget {
  final String sleeps;
  final String title;
  const SleepsWidget({super.key, required this.sleeps, required this.title});

  @override
  State<SleepsWidget> createState() => _SleepsWidgetState();
}

class _SleepsWidgetState extends State<SleepsWidget> {
   bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.h,
      children: [
        Row(
          children: [
            Checkbox(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              value: isChecked,
              checkColor: AppColors.white,
              activeColor: AppColors.primaryColor,
              side: BorderSide(color: AppColors.primaryColor, width: 1.w),
              onChanged: (val) {
                 setState(() => isChecked = val ?? false);
              },
            ),
            Text(
              widget.title,
              style: AppTextStyles.subtitle2.copyWith(color: AppColors.black),
            ),
            Spacer(),
            Text(
              widget.sleeps,
              style: AppTextStyles.subtitle2.copyWith(color: AppColors.black),
            ),
          ],
        ),
        Divider(
          thickness: 1.h,
          color: AppColors.grey200,
        ),
      ],
    );
  }
}
