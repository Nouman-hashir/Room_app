import '../../../app.dart';

class LoginProvider extends ChangeNotifier {
  bool isSignUp = false;
  bool isChecked = false;
  void toggleSignUp() {
    isSignUp = !isSignUp;
    notifyListeners();
  }
  
   void toggleCheckbox(bool? value) {
    isChecked = value ?? false;
    notifyListeners();
  }
}
