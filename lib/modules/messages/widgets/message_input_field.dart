import '../../../app.dart';

class MessageInput extends StatelessWidget {
  const MessageInput({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ChatProvider>(context);

    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          SvgPicture.asset(AppAssets.gallery, height: 24.h),
          10.horizontalSpace,
          SvgPicture.asset(AppAssets.microphone, height: 24.h),
          10.horizontalSpace,
          Expanded(
            child: TextField(
              controller: provider.controller,
              decoration: InputDecoration(
                hintText: "Send Message",
                hintStyle: AppTextStyles.bodyText1.copyWith(
                  fontSize: 13.sp,
                  color: AppColors.black60,
                ),
                filled: true,
                fillColor: AppColors.lightgreen,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.r),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          10.horizontalSpace,
          GestureDetector(
           onTap: () => provider.sendMessage(context),
            child: CircleAvatar(
              backgroundColor: AppColors.lightgreen,
              radius: 25.r,
              child: SvgPicture.asset(AppAssets.send, height: 22.h),
            ),
          ),
        ],
      ),
    );
  }
}
