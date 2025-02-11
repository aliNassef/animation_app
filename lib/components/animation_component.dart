import 'package:flutter/material.dart';

class AnimationComponent extends StatelessWidget {
  const AnimationComponent({
    super.key,
    required this.child,
    required this.background,
    required this.titleColor,
    required this.title,
  });
  final Widget child;
  final Color background, titleColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: background,
      child: ListTile(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => child,
          ),
        ),
        leading: SizedBox(),
        title: Text(
          title,
          style: TextStyle(
            color: titleColor,
          ),
        ),
      ),
    );
  }
}
