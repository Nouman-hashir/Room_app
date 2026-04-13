import '../../../app.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      showAppBar: true,
      showBack: true,
      title: "Edit Profile",
      child: AppPadding(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.verticalSpace,
              ProfileHeader(
                isEdit: true,
              ),
              20.verticalSpace,
              Divider(color: AppColors.primaryColor, endIndent: 30, indent: 30),
              30.verticalSpace,
              Text(
                'Name',
                style: AppTextStyles.subtitle1.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: AppColors.black,
                ),
              ),
              10.verticalSpace,
              CustomTextField(
                hint: "Enter your name here",
                icon: AppAssets.profile,
                suffixIcon: AppAssets.cancelIcon,
              ),
              10.verticalSpace,
              Text(
                'Phone Number',
                style: AppTextStyles.subtitle1.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: AppColors.black,
                ),
              ),
              10.verticalSpace,
              CustomTextField(
                hint: "Enter your number here",
                icon: AppAssets.callIcon,
                suffixIcon: AppAssets.cancelIcon,
              ),
              10.verticalSpace,
              Text(
                'Email',
                style: AppTextStyles.subtitle1.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: AppColors.black,
                ),
              ),
              10.verticalSpace,
              CustomTextField(
                hint: "Enter your email here",
                icon: AppAssets.email,
                suffixIcon: AppAssets.cancelIcon,
              ),
              10.verticalSpace,
              Text(
                'Gender',
                style: AppTextStyles.subtitle1.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: AppColors.black,
                ),
              ),
              10.verticalSpace,
              CustomDropdown(
                hintText: "Select Gender",
                items: ['Male', 'Female'],
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
