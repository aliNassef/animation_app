import 'package:flutter/material.dart';

class AnimatedTextExample extends StatefulWidget {
  const AnimatedTextExample({super.key});

  @override
  State<AnimatedTextExample> createState() => _AnimatedTextExampleState();
}

class _AnimatedTextExampleState extends State<AnimatedTextExample> {
  double _fontSize = 14;
  FontWeight _fontWeight = FontWeight.w400;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Animated Text',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedDefaultTextStyle(
            duration: Duration(milliseconds: 500),
            style: TextStyle(
              fontSize: _fontSize,
              fontWeight: _fontWeight,
              color: _color,
            ),
            child: Text(
              'Ali Nassef',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _fontSize = 24;
                    _fontWeight = FontWeight.w700;
                    _color = Colors.green;
                  });
                },
                icon: Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _fontSize = 14;
                    _fontWeight = FontWeight.w400;
                    _color = Colors.blue;
                  });
                },
                icon: Icon(Icons.remove),
              ),
            ],
          )
        ],
      ),
    );
  }
}
