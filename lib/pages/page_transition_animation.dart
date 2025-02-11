import 'package:animation_course/animation/page_fade_transition.dart';
import 'package:animation_course/animation/page_rotate_transition.dart';
import 'package:animation_course/animation/page_size_transtion.dart';
import 'package:animation_course/components/custom_app_bar.dart';
import 'package:animation_course/pages/secondry_page.dart';
import 'package:flutter/material.dart';

import '../animation/page_mix_fade_size_transtion.dart';
import '../animation/page_mix_scale_rotate.dart';
import '../animation/page_scale_transation.dart';
import '../animation/page_slide_transation.dart';

class PageTransitionAnimation extends StatelessWidget {
  const PageTransitionAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Page Transition',
        titleColor: Colors.white,
        background: Colors.black,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageFadeTransation(
                              SecondryPage(),
                            ),
                          );
                        },
                        child: Text('Page Fade Transation'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageScaleTransation(
                              SecondryPage(),
                            ),
                          );
                        },
                        child: Text('Page scale Transation'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageRotateTransition(
                              SecondryPage(),
                            ),
                          );
                        },
                        child: Text('Page rotate Transation'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageSlideTransation(
                              SecondryPage(),
                            ),
                          );
                        },
                        child: Text('Page slide Transation'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageSizeTranstion(
                              SecondryPage(),
                            ),
                          );
                        },
                        child: Text('Page size Transation'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageMixFadeSizeTranstion(
                              SecondryPage(),
                            ),
                          );
                        },
                        child: Text('Page mix fade & size Transation'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageMixScaleRotateTranstion(
                              SecondryPage(),
                            ),
                          );
                        },
                        child: Text('Page mix scale & rotate Transation'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
