import '../../../app.dart';

class ProfileProvider extends ChangeNotifier {
  bool isEnabled = true;

  void toggleSwitch(bool value) {
    isEnabled = value;
    notifyListeners();
  }
}