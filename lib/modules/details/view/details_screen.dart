import 'package:room/app.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      showAppBar: true,
      showBack: true,
      title: "Book a car",
      child: AppPadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarImageSlider(),
            20.verticalSpace,
            DetailsBody(),
          ],
        ),
      ),
    );
  }
}
