import '../../../app.dart';

class ExplorerProvider extends ChangeNotifier {
  String? _selectedDate;

  String? get selectedDate => _selectedDate;

  void selectDate(String date) {
    _selectedDate = date;
    notifyListeners();
  }

  void clear() {
    _selectedDate = null;
    notifyListeners();
  }
}
