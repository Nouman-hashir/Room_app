import 'package:room/app.dart';

class ProfileTile extends StatelessWidget {
  final String title;
  final String image;
  final bool isNotification;
  final bool islast;
  final VoidCallback? onTap;
  const ProfileTile({
    super.key,
    required this.title,
    required this.image,
    this.isNotification = false,
    this.islast = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppPadding(
      child: Column(
        children: [
          GestureDetector(
             behavior: HitTestBehavior.opaque,
            onTap:  onTap,
            child: Row(
              children: [
                SvgPicture.asset(image, height: 20.h),
                30.horizontalSpace,
                Text(
                  title,
                  style: AppTextStyles.bodyText1.copyWith(
                    color: AppColors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                  ),
                ),
                const Spacer(),
                isNotification
                    ? Consumer<ProfileProvider>(
                        builder: (context, provider, child) {
                          return Transform.scale(
                            scale: 0.9,
                            child: Switch(
                              value: provider.isEnabled,
                              onChanged: (value) {
                                provider.toggleSwitch(value);
                              },
                              activeThumbColor: AppColors.white,
                              activeTrackColor: AppColors.primaryColor,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                            ),
                          );
                        },
                      )
                    : Icon(
                        Icons.arrow_forward_ios,
                        size: 15.sp,
                        color: AppColors.primaryColor,
                      ),
                10.horizontalSpace,
              ],
            ),
          ),
          10.verticalSpace,
          islast ? const SizedBox() : Divider(),
        ],
      ),
    );
  }
}
