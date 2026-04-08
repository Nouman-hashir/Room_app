import '../../../app.dart';

class BottomNavScreen extends StatelessWidget {
  const BottomNavScreen({super.key});
   
   static const List<Widget> screens = [
          ExploreScreen(),
          FavouritesScreen(),
          TripsScreen(),
          MessagesScreen(),
          ProfileScreen(),
        ];

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavProvider>(
      builder: (context, provider, child) {
       
        return CustomScaffold(
          backgroundColor: AppColors.white,
          child: Column(
            children: [
              Expanded(
                child: IndexedStack(
                  index: provider.selectedIndex,
                  children: screens,
                ),
              ),
              Container(
                width: double.infinity,
                height: 70.h,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.grey.withAlpha(50),
                      spreadRadius: 0.5,
                      offset: const Offset(0, -1),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    NavItem(
                      icon: AppAssets.explore,
                      label: "Explore",
                      isSelected: provider.selectedIndex == 0,
                      onTap: () => provider.updateIndex(0),
                    ),
                    NavItem(
                      icon: AppAssets.favourite,
                      label: "Favourites",
                      isSelected: provider.selectedIndex == 1,
                      onTap: () => provider.updateIndex(1),
                    ),
                    NavItem(
                      icon: AppAssets.trips,
                      label: "Trips",
                      isSelected: provider.selectedIndex == 2,
                      onTap: () => provider.updateIndex(2),
                    ),
                    NavItem(
                      icon: AppAssets.message,
                      label: "Messages",
                      isSelected: provider.selectedIndex == 3,
                      onTap: () => provider.updateIndex(3),
                    ),
                    NavItem(
                      icon: AppAssets.profile,
                      label: "Profile",
                      isSelected: provider.selectedIndex == 4,
                      onTap: () => provider.updateIndex(4),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
