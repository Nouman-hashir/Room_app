import '../../../app.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppAssets.backgroundImage,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 0,
            top: 30,
            bottom: 0,
            child: Image.asset(
              AppAssets.sideVector,
              fit: BoxFit.contain,
              width: 150.w,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 110.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  "Hello!",
                  style: AppTextStyles.headline1,
                ),
                Text(
                  "Welcome to When In Roam",
                  style: AppTextStyles.subtitle1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
