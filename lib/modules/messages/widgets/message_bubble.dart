import '../../../app.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isMe;
  final String time;

  const ChatBubble({
    super.key,
    required this.message,
    required this.isMe,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.h),
            padding: EdgeInsets.all(12.w),
            constraints: BoxConstraints(maxWidth: 250.w),
            decoration: BoxDecoration(
              color: isMe ? AppColors.primaryColor : AppColors.lightgreen,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Text(
              message,
              style: AppTextStyles.bodyText1.copyWith(
                color: isMe ? AppColors.white : AppColors.black,
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Text(
            time,
            style: AppTextStyles.bodyText1.copyWith(
              fontSize: 10.sp,
              color: AppColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
