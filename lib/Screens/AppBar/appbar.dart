// file: appbar_reusable.dart
import 'package:flutter/material.dart';

class AppbarReusable extends StatelessWidget implements PreferredSizeWidget {
  final double screenWidth;

  const AppbarReusable(
      {super.key, required this.screenWidth, required String title});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AppBar(
      title: Row(
        children: [
          reuseImage("assets/images/logo.png", 80, 80),
          const Spacer(),
        ],
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              theme.brightness == Brightness.dark
                  ? Colors.grey[850]!
                  : Colors.white,
              theme.scaffoldBackgroundColor,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }

  Widget reuseImage(String path, double height, double width) {
    return Image.asset(
      path,
      width: width,
      height: height,
      errorBuilder: (context, error, stackTrace) =>
          const Icon(Icons.image_not_supported, size: 40),
    );
  }
}
