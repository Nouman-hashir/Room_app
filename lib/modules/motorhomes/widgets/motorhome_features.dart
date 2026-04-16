import '../../../app.dart';

class MotorhomeFeatures extends StatelessWidget {
  const MotorhomeFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Make',
          style: AppTextStyles.headline2.copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeight.w300,
          ),
        ),
        10.verticalSpace,
        CustomDropdown(
          hintText: "Arca",
          items: ["Arca", "Tata", "Honda"],
          onChanged: (value) {},
          borderColor: AppColors.white,
          color: AppColors.grey100,
        ),
        Text(
          'Country of Registration',
          style: AppTextStyles.headline2.copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeight.w300,
          ),
        ),
        10.verticalSpace,
        CustomDropdown(
          hintText: "United States",
          items: ["Pakistan", "England", "Australia", "India", "United States"],
          onChanged: (value) {},
          borderColor: AppColors.white,
          color: AppColors.grey100,
        ),
        10.verticalSpace,
        Text(
          'License Plate',
          style: AppTextStyles.headline2.copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeight.w300,
          ),
        ),
        10.verticalSpace,
        CustomDropdown(
          hintText: "Arca",
          items: ["Arca", "Tata", "Honda"],
          onChanged: (value) {},
          borderColor: AppColors.white,
          color: AppColors.grey100,
        ),
        10.verticalSpace,
        Text(
          'First Registration',
          style: AppTextStyles.headline2.copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeight.w300,
          ),
        ),
        10.verticalSpace,
        CustomDropdown(
          hintText: "2023",
          items: ["2022", "2023", "2024"],
          onChanged: (value) {},
          borderColor: AppColors.white,
          color: AppColors.grey100,
        ),
        10.verticalSpace,
        Text(
          'Required Driver License',
          style: AppTextStyles.headline2.copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeight.w300,
          ),
        ),
        10.verticalSpace,
        CustomDropdown(
          hintText: "B",
          items: ["A", "A+", "C"],
          onChanged: (value) {},
          borderColor: AppColors.white,
          color: AppColors.grey100,
        ),
        10.verticalSpace,
        Text(
          'Seat belt places',
          style: AppTextStyles.headline2.copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeight.w300,
          ),
        ),
        10.verticalSpace,
        CustomDropdown(
          hintText: "2",
          items: ["3", "4", "5"],
          onChanged: (value) {},
          borderColor: AppColors.white,
          color: AppColors.grey100,
        ),
        10.verticalSpace,
        Text(
          'Sleeps',
          style: AppTextStyles.headline2.copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeight.w300,
          ),
        ),
        10.verticalSpace,
        CustomDropdown(
          hintText: "2",
          items: ["3", "4", "5"],
          onChanged: (value) {},
          borderColor: AppColors.white,
          color: AppColors.grey100,
        ),
        20.verticalSpace,
        AppButtons.customButton(
          text: 'Continue',
          color: AppColors.primaryColor,
          textColor: AppColors.white,
          onTap: () {},
        ),
      ],
    );
  }
}
