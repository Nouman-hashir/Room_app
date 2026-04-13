import '../../../app.dart';

class CustomChatAppBar extends StatelessWidget {
  final Color? backgroundColor;
  final Widget child;
  final String title;
  final String image;
  const CustomChatAppBar({
    super.key,
    this.backgroundColor,
    required this.child,
    required this.title,
    required this.image
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? AppColors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        actionsPadding: EdgeInsets.symmetric(horizontal: 20.w),
        centerTitle: true,
        title: Row(
          children: [
            CircleAvatar(
              radius: 18.r,
              backgroundImage: Image.asset(image).image,
            ),
            10.horizontalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Online , 24 mins ago",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
        leading: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
        actions: [
          Container(
            padding:  EdgeInsets.all(10.w),
            decoration: BoxDecoration(
              color: AppColors.lightgreen,
              borderRadius: BorderRadius.circular(12),
            ),
            child: SvgPicture.asset(AppAssets.call,height: 20.h,),
          ),
          10.horizontalSpace,
          Container(
            padding: EdgeInsets.all(10.w),
            decoration: BoxDecoration(
              color: AppColors.lightgreen,
              borderRadius: BorderRadius.circular(12),
            ),
            child: SvgPicture.asset(AppAssets.videoCall,height: 20.h,),
          ),
        ],
      ),
      body: SafeArea(child: child),
    );
  }
}
