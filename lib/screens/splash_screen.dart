


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constant_values_library.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {

  late Animation<Offset> _animation;
  late AnimationController _controller;
  static const int animationDuration = 2;

  @override
  void initState() {
    super.initState();
    waitAndNavigate(animationDuration);
    _controller = AnimationController(
        duration: const Duration(seconds: animationDuration),
        vsync: this,
      )..forward();
      _animation = Tween<Offset>(
        begin: const Offset(0.0, 0.8),
        end: const Offset(1, 0.8),
      ).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInCubic,
      ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.primaryFillColour,
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("assets/classroomIcon.png", color: Colors.white,),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  DisplayLabels.appName,
                  style: GoogleFonts.satisfy(
                    fontSize: 40,
                    color: Colors.white
                  ),
                ),
              ],
            ),
          ),
          Builder(
            builder: (context) => Center(
              child: SlideTransition(
                position: _animation,
                child: Container(
                  height: 75,
                  color: Colours.primaryFillColour,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void waitAndNavigate(animationDuration) async {
  await Future.delayed(Duration(seconds: animationDuration+1));
  Get.toNamed(Routes.authentication);
}