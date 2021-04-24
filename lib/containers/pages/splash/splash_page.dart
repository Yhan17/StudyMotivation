import 'package:flutter/material.dart';
import 'package:study_motivation/containers/pages/home/home_page.dart';
import 'package:study_motivation/core/constants/app_gradients.dart';
import 'package:study_motivation/core/constants/app_images.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then((value) => Navigator.pushReplacement(
    context, MaterialPageRoute(builder: (context) => HomePage())));
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppGradients.linear),
        child: Center(child: Image.asset(AppImages.logo)),
      ),
    );
  }
}
