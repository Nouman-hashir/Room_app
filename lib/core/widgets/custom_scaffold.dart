import '../../app.dart';

class CustomScaffold extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final bool showAppBar;
  final String? title;
  final String? subtitle;
  final bool showBack;
  final bool showBottomNav;
  final VoidCallback? onResetTap;

  const CustomScaffold({
    super.key,
    required this.child,
    this.subtitle,
    this.backgroundColor,
    this.showAppBar = false,
    this.title,
    this.showBack = false,
    this.showBottomNav = false,
    this.onResetTap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? AppColors.white,
      appBar: showAppBar
          ? AppBar(
            forceMaterialTransparency: true,
            actionsPadding: EdgeInsets.symmetric(horizontal: 20.w),
              title: Text(title ?? ""),
              centerTitle: true,
              leading: showBack
                  ? IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      onPressed: () => Navigator.pop(context),
                    )
                  : SizedBox(),
                  actions: [
                    GestureDetector(
                      onTap: onResetTap,
                      child: Text(subtitle ?? "")),
                  ],
            )
          : null,
      body: SafeArea(child: child),
    );
  }
}
