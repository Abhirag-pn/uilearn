import 'package:flutter/material.dart';
import 'package:uirevice/screens/landingpage.dart';
import 'package:uirevice/screens/signinscreen.dart';
import 'package:uirevice/screens/splashscreen.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ui learning app',
        theme: ThemeData(
          textTheme: TextTheme(
            headlineLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width / 13),
              headlineMedium: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width / 15),
                  bodyMedium: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 25,fontStyle: FontStyle.italic,color: Colors.grey.shade600)
                  ) 
                  ,
                  
          colorScheme: ColorScheme.fromSeed(seedColor: primary),
          useMaterial3: true,
          
        ),
        home: SignInScreen());
  }
}
