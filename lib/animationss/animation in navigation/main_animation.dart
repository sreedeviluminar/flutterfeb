import 'package:flutter/material.dart';
import 'package:flutterfeb/animationss/animation%20in%20navigation/second_screen_animation.dart';
import 'package:page_transition/page_transition.dart';

class Main_Animation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) {
                          return Second_animation();
                        },
                        transitionsBuilder:
                            (context, animation1, animation2, child) {
                          return FadeTransition(
                              opacity: animation1, child: child);
                        },
                        transitionDuration: const Duration(milliseconds: 800),
                      ));
                },
                child: const Text("SECOND PAGE")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) {
                          return Second_animation();
                        },
                        transitionsBuilder:
                            (context, animation1, animation2, child) {
                          return ScaleTransition(
                              //scale: animation1,
                              scale: Tween<double>(begin: 0.6, end: 1.0)
                                  .animate(CurvedAnimation(
                                      parent: animation1,
                                      curve: Curves.fastLinearToSlowEaseIn)),
                              child: child);
                        },
                        transitionDuration: const Duration(milliseconds: 800),
                      ));
                },
                child: const Text("SECOND PAGE")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          alignment: Alignment.centerRight,
                          childCurrent: this,
                          duration: Duration(seconds: 1),
                          child: Second_animation(),
                          type: PageTransitionType.rotate));
                },
                child: const Text("SECOND PAGE")),
          ],
        ),
      ),
    );
  }
}
