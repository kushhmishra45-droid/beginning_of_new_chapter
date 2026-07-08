import 'package:begining_of_new_chapter/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
        //  mainAxisAlignment: MainAxisAlignment.center,
          children: [
        SizedBox(height: 70,),
          Uihelper.CustomText(text: "Enter your phone number" , height: 20 ,color: Color(0XFF00A884),fontWeight: FontWeight.normal),
          SizedBox(height: 30,),
          Uihelper.CustomText(text: "WhatsApp will need to verify your phone number" , height: 14 ,color: Color(0XFF5E5E5E),fontWeight: FontWeight.normal),
          Uihelper.CustomText(text: "Carrier charges may apply." , height: 14 ,color: Color(0XFF5E5E5E),fontWeight: FontWeight.normal),
          Uihelper.CustomText(text: " What’s my number?" , height: 14 ,color: Color(0XFF00A884),fontWeight: FontWeight.normal),
          SizedBox(height: 50,),
          ],
        ),
      ),
    );

    
  }
}