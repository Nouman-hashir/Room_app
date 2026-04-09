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
            _chip("1 Week"),
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
            _chip("February"),
            _chip("March"),
          ],
        ),
  5.verticalSpace
      ],
    );
  }
}
Widget _chip(String text) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
    decoration: BoxDecoration(
      border: Border.all(color: AppColors.grey300),
      borderRadius: BorderRadius.circular(12.r),
    ),
    child: Text(text,
        style: AppTextStyles.subtitle2.copyWith(
      fontSize: 13.sp,
      color: AppColors.black,
    )),
  );
}