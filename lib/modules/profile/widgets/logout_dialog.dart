import 'package:room/app.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      child: Container(
        padding: EdgeInsets.all(20.w),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Logout",
              style: AppTextStyles.subtitle1.copyWith(
                color: AppColors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18.sp,
              ),
            ),
            Text(
              "Are you want to logout your account?",
              style: AppTextStyles.subtitle1.copyWith(
                color: AppColors.black54,
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
              ),
            ),
            20.verticalSpace,
            Row(
              children: [
                Expanded(
                  child: AppButtons.customButton(
                    text: "No",
                    height: 45,
                    textColor: AppColors.black54,
                    color: AppColors.grey200,
                    onTap: () {
                      context.pop();
                    },
                  ),
                ),
                10.horizontalSpace,
                Expanded(
                  child: AppButtons.customButton(
                    height: 45,
                    text: "Yes",
                    onTap: () {
                      context.pop();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
