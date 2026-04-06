import '../../../app.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;
  final bool showBack;

  const AuthBackground({
    super.key,
    required this.child,
    this.showBack = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        children: [
          SizedBox(
            height: 310.h,
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
                        child: const Icon(Icons.arrow_back_ios, color: AppColors.white),
                      ),
                    ),
                  ),
               
              ],
            ),
          ),
           Container(
                height: MediaQuery.of(context).size.height * 0.62,
                width: double.infinity,
                padding: EdgeInsets.all(20.w),
                decoration:  BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40.r),
                  ),
                ),
                child: child,
              ),
        ],
      ),
    );
  }
}