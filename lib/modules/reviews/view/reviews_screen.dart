import '../../../app.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      showAppBar: true,
      showBack: true,
      title: "Reviews",
      child: AppPadding(
        child: Column(
          children: [
            ReviewCard(
              index: 0,
              image: AppAssets.profileImage,
              review:
                  'Lorem ipsum is placeholder text commonly used in the publishing and design industries. Its used to fill spaces in documents, websites, or design mockups give a visual impression of how ',
              rating: 3,
            ),
            20.verticalSpace,
            ReviewCard(
              index: 1,
              image: AppAssets.profile1,
              review:
                  'Lorem ipsum is placeholder text commonly used in the publishing and design industries. Its used to fill spaces in documents, websites, or design mockups give a visual impression of how ',
              rating: 5,
            ),
          ],
        ),
      ),
    );
  }
}
