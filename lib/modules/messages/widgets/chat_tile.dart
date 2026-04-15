import '../../../app.dart';

class ChatTile extends StatelessWidget {
  final String title;
  final String image;
  const ChatTile({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
           behavior: HitTestBehavior.opaque,
          onTap: () {
            context.push('/messages', extra:{
              'title': title,
              'image': image,
            } );
          },
          child: Row(
            children: [
              Image.asset(image, height: 55.h),
              10.horizontalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.headline1.copyWith(
                      fontSize: 13.sp,
                      color: AppColors.black,
                    ),
                  ),
                  Text(
                    "Hello, How are you?",
                    style: AppTextStyles.bodyText1.copyWith(
                      fontSize: 12.sp,
                      color: AppColors.grey,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "10:00 AM",
                    style: AppTextStyles.bodyText1.copyWith(
                      fontSize: 12.sp,
                      color: AppColors.grey,
                    ),
                  ),
                  5.verticalSpace,
                  Container(
                    padding: EdgeInsets.all(5.w),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primaryColor,
                    ),
                    child: Center(
                      child: Text(
                        "2",
                        style: AppTextStyles.bodyText1.copyWith(
                          fontSize: 10.sp,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        10.verticalSpace,
        const Divider(indent: 10, endIndent: 10, color: AppColors.grey300),
      ],
    );
  }
}
