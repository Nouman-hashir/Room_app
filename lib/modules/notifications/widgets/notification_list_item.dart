import '../../../app.dart';

class NotificationListItem extends StatelessWidget {
  final String name;
  final String image;
  final String text;
  final bool isshow;
  const NotificationListItem({
    super.key,
    required this.name,
    required this.image,
    required this.text,
    this.isshow = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        20.verticalSpace,
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(5.w),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
              ),
            ),
            20.horizontalSpace,
            Image.asset(image, height: 45.h),
            20.horizontalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: name,
                    style: AppTextStyles.bodyText1.copyWith(
                      fontSize: 12.sp,
                      color: AppColors.black,
                      fontWeight: FontWeight.w600,
                    ),
                    children: [
                      TextSpan(
                        text: text,
                        style: AppTextStyles.bodyText1.copyWith(
                          fontSize: 12.sp,
                          color: AppColors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "2 hour ago",
                  style: AppTextStyles.bodyText1.copyWith(
                    fontSize: 12.sp,
                    color: AppColors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
        10.verticalSpace,
        isshow ? Divider(endIndent: 20, indent: 20):Container() ,
      ],
    );
  }
}
