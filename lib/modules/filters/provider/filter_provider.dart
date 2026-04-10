import '../../../app.dart';

class FilterProvider extends ChangeNotifier {
  final Map<String, bool> _filters = {};

  Map<String, bool> get filters => _filters;
  String? _selectedDate;
  String? _selectedItem;

  String? get selectedDate => _selectedDate;
  bool isSelected(String key) {
    return _filters[key] ?? false;
  }

  void toggleCheckbox(String key, bool value) {
    _filters[key] = value;
    notifyListeners();
  }

  void selectDate(String date) {
    _selectedDate = date;
    notifyListeners();
  }

  bool isSelectedItem(String key) {
    return _selectedItem == key;
  }

  void selectItem(String key) {
    _selectedItem = key; 
    notifyListeners();
  }


  void reset() {
    _filters.clear();
    _selectedDate = null;
    _selectedItem = null;
    notifyListeners();
  }
}
