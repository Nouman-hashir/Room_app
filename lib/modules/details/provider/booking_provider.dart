import '../../../app.dart';

class BookingProvider extends ChangeNotifier {
  final PageController pageController = PageController();
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  DateTime get focusedDay => _focusedDay;
  DateTime? get selectedDay => _selectedDay;
  DateTime get today =>
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

  DateTime normalize(DateTime d) => DateTime(d.year, d.month, d.day);

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

  void selectDay(DateTime selected, DateTime focused) {
    _selectedDay = selected;
    _focusedDay = focused;
    notifyListeners();
  }

  bool isEnabled(DateTime day) {
    return !normalize(day).isBefore(today);
  }
}
