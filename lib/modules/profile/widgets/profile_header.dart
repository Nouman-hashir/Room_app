import 'package:image_picker/image_picker.dart';

import '../../../app.dart';

class ProfileHeader extends StatelessWidget {
  final bool isEdit;
  const ProfileHeader({super.key, this.isEdit = false});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ProfileProvider>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              height: 60.h,
              width: 60.h,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.r),
                child: provider.profileImage != null
                    ? Image.file(provider.profileImage!, fit: BoxFit.cover)
                    : Image.asset(AppAssets.profileImage, fit: BoxFit.cover),
              ),
            ),
            if (isEdit)
              Positioned(
                right: 0,
                bottom: 0,
                child: GestureDetector(
                  onTap: () {
                    context.read<ProfileProvider>().pickImage(
                      source: ImageSource.gallery,
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(4.w),
                    decoration: const BoxDecoration(
                      color: AppColors.primaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(AppAssets.edit, height: 13.h),
                  ),
                ),
              ),
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
