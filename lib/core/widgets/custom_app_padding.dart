import '../../app.dart';

class AppPadding extends StatelessWidget {
  final Widget child;
  final double? horizontal;
  final double? vertical;
  final double? all;

  const AppPadding({
    super.key,
    required this.child,
    this.horizontal,
    this.vertical,
    this.all,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: all != null
          ? EdgeInsets.all(all!)
          : EdgeInsets.symmetric(
              horizontal: horizontal ?? 16.w,
              vertical: vertical ?? 8.h,
            ),
      child: child,
    );
  }
}
