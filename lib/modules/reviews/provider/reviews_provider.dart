import '../../../app.dart';

class ReviewsProvider extends ChangeNotifier {
  final Map<int, int> _ratings = {};

  int getRating(int index) => _ratings[index] ?? 0;

  void setRating(int index, int value) {
    _ratings[index] = value;
    notifyListeners();
  }
}
