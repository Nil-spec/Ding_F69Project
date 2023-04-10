import 'package:flutter/material.dart';
import 'package:flutter_ui/pages/onboarding.dart';

void main(){
  runApp(const Intro());

}
class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
