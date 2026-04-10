import '../../../app.dart';

class BedBottomSheet extends StatelessWidget {
  const BedBottomSheet({super.key});
  static final List<String> beds = ["Sleep 1", "Sleep 2", "Sleep 3", "Sleep 4", "Sleep 5 or more", ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.h,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
      ),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: beds.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return SleepsWidget(title: beds[index], sleeps: '0');
              },
            ),
          ),
          20.verticalSpace,
          AppButtons.customButton(text: "Done", onTap: () {
            context.pop();
          }),
        ],
      ),
    );
  }
}
