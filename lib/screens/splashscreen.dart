import 'package:flutter/material.dart';
import 'package:uirevice/constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: Center(
        child: Text(
          "Dipstore.",
          style:Theme.of(context).textTheme.headlineMedium!.copyWith(color:onprimary ),
        ),
      ),
    );
  }
}
