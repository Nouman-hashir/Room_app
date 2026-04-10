import '../../../app.dart';

class FilterIconTile extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback? onTap; 

  const FilterIconTile({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<FilterProvider>(
      builder: (context, provider, child) {
        final isSelected = provider.isSelectedItem(title);
        return GestureDetector(
          onTap: () {
            provider.selectItem(title);
          },
          child: Container(
            decoration: BoxDecoration(
              color: isSelected ? AppColors.primaryColor : AppColors.white,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 16.w,),
              leading: Image.asset(icon, height: 24.h, width: 24.w , color: isSelected ? AppColors.white : AppColors.primaryColor),
              title: Text(
                title,
                style: AppTextStyles.bodyText1.copyWith(
                  fontSize: 13.sp,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                  color: isSelected ? AppColors.white : AppColors.black
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
