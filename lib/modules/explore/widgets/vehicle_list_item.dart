import '../../../app.dart';

class VehicleListItem extends StatelessWidget {
  final String title;
  final String image;
  const VehicleListItem({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: AppColors.grey50, 
        borderRadius: BorderRadius.circular(12.r),  
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image, height: 80.h, width: 100.w),
          30.horizontalSpace,
          Text(
            title,
            style: AppTextStyles.headline2.copyWith(
              fontSize: 12.sp,
              color: AppColors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}