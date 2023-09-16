import 'package:flutter/material.dart';
import 'package:uirevice/constants.dart';

import '../widgets/customtextfeild.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  
                    child: Text(
                      "Please Sign In",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
              Text(
                "Enter your username or email as well as your account password to continue",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: 20,),
              CustomTextFeild(icon: Icons.email,isPass: false,title: "Email")
             , SizedBox(height: 20,)
              , CustomTextFeild(icon: Icons.lock,isPass: true,title: "Password")
            ],
          ),
        ),
      ),
    );
  }
}

