import '../../../app.dart';

class FlexibleTab extends StatelessWidget {
  const FlexibleTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        5.verticalSpace,
        Text("Trip Length"),
        15.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _chip("1 Week", isSelected: true),
            _chip("2 Weeks"),
            _chip("3 Weeks"),
          ],
        ),
        15.verticalSpace,
        Text("Departure Month"),
        15.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _chip("January"),
            _chip("February", isSelected: true),
            _chip("March"),
          ],
        ),
      ],
    );
  }
}

Widget _chip(String text, {bool isSelected = false}) {
  return GestureDetector(
    onTap: () {

    },
    child: Consumer<ExplorerProvider>(
      builder: (context, provider, child) {
        
      return GestureDetector(
        onTap: () {
          provider.selectDate(text);
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
          decoration: BoxDecoration(
            border: provider.selectedDate == text
                ? Border.all(color: AppColors.primaryColor)
                : Border.all(color: AppColors.grey300),
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Text(
            text,
            style: AppTextStyles.subtitle2.copyWith(
              fontSize: 13.sp,
              color: AppColors.black,
            ),
          ),
        ),
      );
      }
    ),
  );
}
