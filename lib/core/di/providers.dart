import 'package:provider/single_child_widget.dart';
import '../../app.dart';

List<SingleChildWidget> registerGlobalNotifiers() {
  return [
    ChangeNotifierProvider(create: (_) => SplashProvider()),
    ChangeNotifierProvider(create: (_) => TextfieldProvider()),
    ChangeNotifierProvider(create: (_) => ForgetPasswordProvider()),
    ChangeNotifierProvider(create: (_) => LoginProvider()),
    ChangeNotifierProvider(create: (_) => BottomNavProvider()),
    ChangeNotifierProvider(create: (_) => FilterProvider()),
    ChangeNotifierProvider(create: (_) => ExplorerProvider()),
    ChangeNotifierProvider(create: (_) => ChatProvider()),
    ChangeNotifierProvider(create: (_) => ProfileProvider()),
    ChangeNotifierProvider(create: (_) => BookingProvider()),
    ChangeNotifierProvider(create: (_) => ReviewsProvider()),
  ];
}
