import 'dart:async';
import 'package:flutter/material.dart';

import '../../res/constants.dart';
import '../home/home.dart';
import '../intro/components/animated_texts_componenets.dart';
import 'components/animated_loading_text.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}
late Timer myTimer;
class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    myTimer =   Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }
@override
  void dispose() {
  myTimer.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedImageContainer(width: 100, height: 100),
            SizedBox(height: defaultPadding),
            AnimatedLoadingText(),
          ],
        ),
      ),
    );
  }
}
