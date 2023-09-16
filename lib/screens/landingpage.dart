import 'package:flutter/material.dart';
import 'package:uirevice/widgets/custombutton.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const  BoxDecoration(
        
        image: DecorationImage(fit: BoxFit.cover,image:AssetImage("assets/images/bg.jpg"))
      ),
      child:   Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const Spacer()
            ,Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30)
              ),
          
              height: MediaQuery.of(context).size.height/3,
              width: double.maxFinite,

              child:  Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text("Welcome To Dipstore",style: Theme.of(context).textTheme.headlineMedium,),
                 const SizedBox(height: 12,),
                  Text("The best place to find the \nlatest trends at the\n best prices",textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyMedium,),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButton(title: "Sign In",onpress: (){},type: ButtonType.light,),
                    CustomButton(title: "Get Started",onpress: (){},type: ButtonType.dark,),
                     
                  ],
                ),
                const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 40,)],
        ),
      ),
    );
  }
}