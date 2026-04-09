// ignore_for_file: deprecated_member_use

import '../../app.dart';

class AppButtons {
  static Widget customButton({
    required String text,
    required VoidCallback onTap,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF0E7A3D),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          style: AppTextStyles.subtitle1.copyWith(
            color: AppColors.white,
            fontWeight: FontWeight.w500,
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
