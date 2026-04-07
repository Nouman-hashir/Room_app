import '../../app.dart';

class CustomScaffold extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final bool showAppBar;
  final String? title;
  final bool showBack;

  const CustomScaffold({
    super.key,
    required this.child,
    this.backgroundColor,
    this.showAppBar = false,
    this.title,
    this.showBack = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? AppColors.primaryColor,
      appBar: showAppBar
          ? AppBar(
              title: Text(title ?? ""),
              centerTitle: true,
              leading: showBack
                  ? IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      onPressed: () => Navigator.pop(context),
                    )
                  : null,
            )
          : null,

      body: SafeArea(child: child),
    );
  }
}
