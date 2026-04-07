

import '../../../app.dart';

class ForgetPasswordProvider extends ChangeNotifier {
  bool showForgetPassword = true;

  void showChangePassword() {
    showForgetPassword = false;
    notifyListeners();
  }

  void showForget() {
    showForgetPassword = true;
    notifyListeners();
  }
}