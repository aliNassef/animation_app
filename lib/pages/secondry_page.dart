import 'package:animation_course/components/custom_app_bar.dart';
import 'package:flutter/material.dart';

class SecondryPage extends StatelessWidget {
  const SecondryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: CustomAppBar(
        title: 'Secondry Page',
        titleColor: Colors.white,
        background: Colors.brown,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}
