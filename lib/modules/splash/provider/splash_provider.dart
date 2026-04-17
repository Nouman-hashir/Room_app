import '../../../app.dart';

class SplashProvider extends ChangeNotifier {
  Future<void> init(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2));
    // if (context.mounted) {
    //   context.push('/login');
    // }
    notifyListeners();
  }
}
