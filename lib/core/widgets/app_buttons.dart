// ignore_for_file: deprecated_member_use

import '../../app.dart';

class AppButtons {
  static Widget customButton({
    required String text,
    required VoidCallback onTap,
    Color? color,
    double? width,
    double? height,
    Color? textColor,
  }) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 50.h,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: AppTextStyles.subtitle1.copyWith(
            color: textColor ?? AppColors.white,
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }
  static Widget customIconButton({
    required int width,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 15.h),
        decoration: BoxDecoration(
         color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Image.asset(AppAssets.menuIcon, height: 22.h, width: 22.w),
      ),
    );
  }
}
