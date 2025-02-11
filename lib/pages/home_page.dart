import 'package:animation_course/components/animation_component.dart';
import 'package:animation_course/components/custom_app_bar.dart';
import 'package:animation_course/pages/explicit_animation_page.dart';
import 'package:animation_course/pages/implicit_animation_page.dart';
import 'package:animation_course/pages/more_animation_page.dart';
import 'package:flutter/material.dart';
import 'page_transition_animation.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Home Page',
        titleColor: Colors.white,
        background: Colors.blue,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimationComponent(
                background: Colors.orange,
                title: 'Implicit Animation',
                titleColor: Colors.black,
                child: ImplicitAnimation(),
              ),
              SizedBox(
                height: 16,
              ),
              AnimationComponent(
                background: Colors.teal,
                title: 'Explict Animation',
                titleColor: Colors.white,
                child: ExplicitAnimation(),
              ),
              SizedBox(
                height: 16,
              ),
              AnimationComponent(
                background: Colors.black,
                title: 'Page Transition',
                titleColor: Colors.white,
                child: PageTransitionAnimation(),
              ),
              SizedBox(
                height: 16,
              ),
              AnimationComponent(
                background: Colors.red,
                title: 'More Animation',
                titleColor: Colors.black,
                child: MoreAnimation(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
