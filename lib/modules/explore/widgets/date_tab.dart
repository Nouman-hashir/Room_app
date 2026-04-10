import '../../../app.dart';

class DatesTab extends StatelessWidget {
  const DatesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _chip("Exact", isSelected: true),
        _chip("1 day"),
        _chip("2 day"),
      ],
    );
  }
}

Widget _chip(String text, {bool isSelected = false}) {
  return Consumer<ExplorerProvider>(
    builder: (context, provider, child) {
      return GestureDetector(
        onTap: () {
          provider.selectDate(text);
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 12.h),
          decoration: BoxDecoration(
            border: provider.selectedDate == text
                ? Border.all(color: AppColors.primaryColor)
                : Border.all(color: AppColors.grey300),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Text(
            text,
            style: AppTextStyles.subtitle2.copyWith(
              fontSize: 12.sp,
              color: AppColors.black,
            ),
          ),
        ),
      );
    },
  );
}
