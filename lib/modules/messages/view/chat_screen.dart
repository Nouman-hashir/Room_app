import 'package:room/app.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  static final List<ChartTileModel> chartTiles = [
    ChartTileModel(name: 'Ahmad', image: AppAssets.profileImage),
    ChartTileModel(name: 'Usman', image: AppAssets.profileImage),
    ChartTileModel(name: 'Ali', image: AppAssets.profileImage),
    ChartTileModel(name: 'Ali', image: AppAssets.profile1),
    ChartTileModel(name: 'Ali', image: AppAssets.profileImage),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      showAppBar: true,
      showBack: false,
      title: "Messages",
      child: AppPadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FilterSectionTitle(title: "New Messages", fontSize: 18),
            15.verticalSpace,
            Expanded(
              child: ListView.builder(
                itemCount: chartTiles.length,
                itemBuilder: (context, index) {
                  final item = chartTiles[index];
                  return ChatTile(image: item.image, title: item.name);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
