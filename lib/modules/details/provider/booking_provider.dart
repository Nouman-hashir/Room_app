import '../../../app.dart';

class BookingProvider extends ChangeNotifier {
  final PageController pageController = PageController();

  int currentIndex = 0;

  final List<String> images = [
    "assets/images/car.png",
    "assets/images/car.png",
    "assets/images/car.png",
  ];

  void onPageChanged(int index) {
    currentIndex = index;
    notifyListeners();
  }

  void next() {
    if (currentIndex < images.length - 1) {
      currentIndex++;
      pageController.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      notifyListeners();
    }
  }

  void previous() {
    if (currentIndex > 0) {
      currentIndex--;
      pageController.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
      notifyListeners();
    }
  }
}