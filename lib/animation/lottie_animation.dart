import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimationExample extends StatefulWidget {
  const LottieAnimationExample({super.key});

  @override
  State<LottieAnimationExample> createState() => _LottieAnimationExampleState();
}

class _LottieAnimationExampleState extends State<LottieAnimationExample> {
  final PageController _pageController = PageController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> paths = [
      'assets/lottie/tigger.json',
      'assets/lottie/car.json',
      'assets/lottie/bird.json',
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Lottie Animation',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: PageView.builder(
        itemCount: paths.length,
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
            setState(() {});
          });
        },
        scrollDirection: Axis.horizontal,
        controller: _pageController,
        itemBuilder: (context, index) => Center(
          child: Lottie.asset(
            paths[index],
            repeat: true,
            reverse: false,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          _pageController.animateToPage(
            value,
            duration: Duration(milliseconds: 500),
            curve: Curves.linear,
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.animation_outlined),
            label: 'Tigger',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_fix_normal),
            label: 'Car',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplanemode_active),
            label: 'Bird',
          ),
        ],
      ),
    );
  }
}
