import '../../app.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final String icon;
  final String? suffixIcon;
  final bool isPassword;

  const CustomTextField({
    super.key,
    required this.hint,
    required this.icon,
    this.suffixIcon,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<TextfieldProvider>(
      builder: (context, provider, child) {
        return TextField(
          obscureText: isPassword ? provider.isObscure : false,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: AppTextStyles.subtitle2,
            prefixIcon: Padding(
              padding: EdgeInsets.all(14.w),
              child: SizedBox(
                width: 18.w,
                height: 18.h,
                child: Image.asset(icon),
              ),
            ),
            suffixIcon: Padding(
              padding: EdgeInsets.all(15.w),
              child: GestureDetector(
                onTap: () {
                  if (isPassword) {
                    provider.toggleObscure();
                  }
                },
                child: SizedBox(
                  width: 15.w,
                  height: 15.h,
                  child: suffixIcon != null
                      ? Image.asset(suffixIcon!)
                      : Image.asset(
                          isPassword
                              ? (provider.isObscure
                                  ? AppAssets.eyeClose
                                  : AppAssets.eyeOpen)
                              : AppAssets.cancelIcon,
                        ),
                ),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.grey300, width: 0.75.w),
              borderRadius: BorderRadius.circular(12.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.primaryColor, width: 1.w),
              borderRadius: BorderRadius.circular(12.r),
            ),
          ),
        );
      },
    );
  }
}
