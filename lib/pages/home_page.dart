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
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'Home Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.blue,
              child: ListTile(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImplicitAnimation(),
                  ),
                ),
                leading: SizedBox(),
                title: Text('Implict Animation'),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              color: Colors.blue,
              child: ListTile(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExplicitAnimation(),
                  ),
                ),
                leading: SizedBox(),
                title: Text('Explict Animation'),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              color: Colors.blue,
              child: ListTile(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageTransitionAnimation(),
                  ),
                ),
                leading: SizedBox(),
                title: Text('Page Transition'),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              color: Colors.blue,
              child: ListTile(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MoreAnimation(),
                  ),
                ),
                leading: SizedBox(),
                title: Text('More Animation'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
