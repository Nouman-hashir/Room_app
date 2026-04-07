import '../../../app.dart';

class TextfieldProvider extends ChangeNotifier {
  bool isObscure = true;

  void toggleObscure() {
    isObscure = !isObscure;
    notifyListeners();
  }
}
