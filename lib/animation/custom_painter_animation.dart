import 'package:flutter/material.dart';

class CustomPainterAnimationExample extends StatefulWidget {
  const CustomPainterAnimationExample({super.key});

  @override
  State<CustomPainterAnimationExample> createState() =>
      _CustomPainterAnimationExampleState();
}

class _CustomPainterAnimationExampleState
    extends State<CustomPainterAnimationExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _sizeAnimation;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    _sizeAnimation = Tween<double>(begin: 40, end: 100).animate(_controller);

    _colorAnimation = ColorTween(begin: Colors.blue, end: Colors.red).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'Custom Painter Animation',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return CustomPaint(
              size: Size.square(50),
              painter: CirclePainter(
                _sizeAnimation.value,
                _colorAnimation.value,
              ),
            );
          },
        ),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  final double _size;
  final Color? _color;

  CirclePainter(
    this._size,
    this._color,
  );
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = _color!
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), _size, paint);
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) {
    return _size != oldDelegate._size || _color != oldDelegate._color;
  }
}
