import '../../app.dart';

class AppColors {

    static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);

   static final Color white10 = white.withAlpha(26);   
  static final Color white20 = white.withAlpha(51);   
  static final Color white30 = white.withAlpha(77);  
  static final Color white50 = white.withAlpha(128);  
  static final Color white70 = white.withAlpha(179);  

  static final Color black10 = black.withAlpha(26);
  static final Color black20 = black.withAlpha(51);
  static final Color black30 = black.withAlpha(77);
  static final Color black54 = black.withAlpha(128);
  static final Color black60 = black.withAlpha(153);
  static final Color black87 = black.withAlpha(179);

  static const Color grey50 = Color(0xFFF9FAFB);
  static const Color grey100 = Color(0xFFF3F4F6);
  static const Color grey200 = Color(0xFFE5E7EB);
  static const Color grey300 = Color(0xFFD1D5DB);
  static const Color grey400 = Color(0xFF9CA3AF);
  static const Color grey500 = Color(0xFF6B7280);
  static const Color grey600 = Color(0xFF4B5563);
  static const Color grey700 = Color(0xFF374151);
  static const Color grey800 = Color(0xFF1F2937);
  static const Color grey900 = Color(0xFF111827);

  static const Color background = Color(0xFFFFFFFF);
  static const Color textColor = Color(0xFFF4AE34);
  static const Color lightTextColor = Color(0xFFFCE7C2);
  static const Color grey = Colors.grey;
  static const Color darkgrey = Color(0xff6B7280);
  static const Color darktextColor = Color(0xFF8A7B60);
  static const Color blue = Color(0xff4aa9ff);
  static const Color green = Colors.green;
  static const Color lightgreen = Color(0xff34C759);
  static const Color yellow = Colors.yellow;
  static const Color purple = Colors.purple;
  static const Color lightgrey = Color(0xffF3F4F6);
  static const Color darkblue = Color(0xff2D8BC7);
  static const Color red = Colors.red;
  static const Color orange = Colors.orange;

  static const Color primaryColor = Color(0xFF04773B);
  static const Color secondaryColor = Color(0xFFFFFFFF);
  static const Color accentColor = Color(0xFFFDEFD6);

  static const LinearGradient blueSkinGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFCFE4FD), Color(0xFFFFFFFF), Color(0xFFFDEFD6)],
    stops: [0.0, 0.5, 1.0],
  );
}
