import '../../../app.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;
  final bool showBack;
  final int height;

  const AuthBackground({super.key, required this.child, this.showBack = false, required this.height});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          SizedBox(
            height: height.h,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    AppAssets.backgroundImage,
                    fit: BoxFit.cover,
                  ),
                ),
                if (showBack)
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(20.w),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(40.r)),
              ),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: child,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
