import '../../../app.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.grey100,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Description",
            style: AppTextStyles.headline2.copyWith(
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          10.verticalSpace,
          Text(
            "Rated #1 in Camper Vans—Because Sheep Still Can’t Drive! 🐑😄\n\n"
            "Dreaming of the perfect Scottish adventure? We've got you covered!\n\n"
            "✅ Cosy, easy-to-drive camper vans (auto and manual)\n"
            "✅ Small enough for Scotland’s twisty wee roads but big enough for epic memories\n"
            "✅ Insurance from 21+ years—because adventure shouldn’t wait!\n"
            "✅ Flexible deposits to lock in your trip hassle-free\n"
            "✅ Friendly experts since 1998—we know the roads, the spots, and the stories\n\n"
            "Whether you’re chasing castles, beaches, or both, our camper vans make every mile unforgettable.\n"
            "Hop in, hit the road, and live your adventure your way!",
          
            style: AppTextStyles.subtitle2.copyWith(
              fontSize: 14.sp,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
