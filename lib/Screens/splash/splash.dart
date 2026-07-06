import 'package:begining_of_new_chapter/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
       body: Center(
         child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Column(children: [ 
             
             Image.asset("assets/whatsapp1.png"),
             SizedBox(height: 20,),

             Uihelper.CustomText(text: "Whatsapp" , height: 18 ,fontWeight: FontWeight.bold),
             
             
                 ],),
           ],
         ),
       ),
    );

   
  }
}