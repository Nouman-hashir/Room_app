import '../../../app.dart';

class ProfileHeader extends StatelessWidget {
  final bool isEdit;
  const ProfileHeader({super.key, this.isEdit = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Image.asset(AppAssets.profileImage, height: 60.h),
            isEdit
                ? Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.all(4.w),
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(AppAssets.edit, height: 13.h),
                    ),
                  )
                : const SizedBox.shrink(),
          ],
        ),
        20.horizontalSpace,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Kristin Waston",
              style: AppTextStyles.headline2.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "bill.exander@gmail.com",
              style: AppTextStyles.headline2.copyWith(
                fontSize: 12.sp,
                color: AppColors.grey,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
