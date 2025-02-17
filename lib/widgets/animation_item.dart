import 'package:flutter/material.dart';

class AnimationItemWidget extends StatelessWidget {
  const AnimationItemWidget({
    super.key,
    required this.title,
    required this.widget,
    this.color,
  });
  final String title;
  final Widget widget;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => widget),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color ?? Colors.blue,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
