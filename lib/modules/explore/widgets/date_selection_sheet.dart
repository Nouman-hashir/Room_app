import '../../../app.dart';

class DateSelectionSheet extends StatelessWidget {
  const DateSelectionSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.grey200,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: TabBar(
                dividerColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: EdgeInsets.all(5.w),
                indicator: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                labelColor: AppColors.primaryColor,
                unselectedLabelColor: AppColors.black,
                labelStyle: AppTextStyles.subtitle2,
                tabs: const [
                  Tab(text: "Dates"),
                  Tab(text: "Flexible"),
                ],
              ),
            ),
            SizedBox(
              height: 190.h,
              child: TabBarView(children: [DatesTab(), FlexibleTab()]),
            ),
            AppButtons.customButton(
              text: "Done",
              onTap: () {
                context.pop();
              },
            ),
            20.verticalSpace,
          ],
        ),
      ),
    );
  }
}
