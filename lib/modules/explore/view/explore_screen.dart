import 'package:room/app.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          ExploreHeader(),
          Expanded(child: ExploreBody()),
        ],
      ),
    );
  }
}
