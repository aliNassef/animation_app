import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.titleColor,
    required this.background,
  });
  final String title;
  final Color titleColor, background;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: background,
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          color: titleColor,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
