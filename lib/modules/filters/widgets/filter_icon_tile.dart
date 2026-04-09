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
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(icon, height: 24.h, width: 24.w),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          10.verticalSpace,
          Divider(thickness: 1.h, color: AppColors.grey200),
        ],
      ),
      onTap: onTap,
    );
  }
}
