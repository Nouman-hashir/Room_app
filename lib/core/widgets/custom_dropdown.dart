import '../../app.dart';

class CustomDropdown<T> extends StatelessWidget {
  final String hintText;
  final List<T> items;
  final T? value;
  final Function(T?) onChanged;
  final String? prefixIcon;
    final bool isCustom;
  final VoidCallback? onTap;

  const CustomDropdown({
    super.key,
    required this.hintText,
    required this.items,
    required this.onChanged,
    this.value,
    this.prefixIcon,
    this.isCustom = false,
    this.onTap,
  });

  @override
Widget build(BuildContext context) {
  return GestureDetector(
    onTap: isCustom ? onTap : null, 
    child: Container(
      padding: isCustom
          ? EdgeInsets.symmetric(horizontal: 12.w, vertical:11.h)
          : EdgeInsets.symmetric(horizontal: 12.w),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grey300, width: 0.75.w),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: isCustom
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    if (prefixIcon != null) ...[
                      Image.asset(prefixIcon!, height: 18.h, width: 18.w),
                      10.horizontalSpace,
                    ],
                    Text(
                      hintText,
                      style: AppTextStyles.subtitle2,
                    ),
                  ],
                ),
                const Icon(Icons.keyboard_arrow_down),
              ],
            )
          : DropdownButtonHideUnderline(
              child: DropdownButton<T>(
                value: value,
                isExpanded: true,
                hint: Row(
                  children: [
                    if (prefixIcon != null) ...[
                      Image.asset(prefixIcon!, height: 18.h, width: 18.w),
                      10.horizontalSpace,
                    ],
                    Text(hintText, style: AppTextStyles.subtitle2),
                  ],
                ),
                icon: const Icon(Icons.keyboard_arrow_down),
                items: items.map((item) {
                  return DropdownMenuItem<T>(
                    value: item,
                    child: Text(item.toString()),
                  );
                }).toList(),
                onChanged: onChanged,
              ),
            ),
    ),
  );
}
}