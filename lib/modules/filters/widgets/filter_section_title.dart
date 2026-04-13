import '../../../app.dart';

class FilterSectionTitle extends StatelessWidget {
  final String title;
  final int fontSize;

  const FilterSectionTitle({super.key, required this.title, this.fontSize = 14});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h, bottom: 5.h),
      child: Text(
        title,
        style: AppTextStyles.headline3.copyWith(
          fontSize: fontSize.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
