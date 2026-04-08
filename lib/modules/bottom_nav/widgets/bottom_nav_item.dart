import '../../../app.dart';

class NavItem extends StatelessWidget {
  final String icon;
  final String label;
  final bool isSelected;
  final VoidCallback? onTap;

  const NavItem({
    super.key,
    required this.icon,
    required this.label,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(icon, width: 22.w, height: 22.h, color: isSelected ? AppColors.primaryColor : AppColors.grey),
            7.verticalSpace,
            Text(
              label,
              style: AppTextStyles.subtitle1.copyWith(
                color: isSelected ? AppColors.primaryColor : AppColors.grey,
                fontWeight: FontWeight.w600,
                fontSize: 10.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
