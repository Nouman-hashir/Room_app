import '../../../app.dart';

class MotoCharacteristics extends StatelessWidget {
  final String title;
  final String image;
  const MotoCharacteristics({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: AppColors.grey100,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, height: 55.h, width: 55.w),
          10.verticalSpace,
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyles.headline2.copyWith(
              fontSize: 15.sp,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
