import 'package:begining_of_new_chapter/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
 // const OtpScreen({super.key, required String phonenumber});

String phonenumber;
OtpScreen({super.key, required this.phonenumber});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  get phonenumber => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
        //  mainAxisAlignment: MainAxisAlignment.center,
          children: [
        SizedBox(height: 70,),
          Uihelper.CustomText(text: "Verifying your number" , height: 20 ,color: Color(0XFF00A884),fontWeight: FontWeight.bold),
          SizedBox(height: 30,),
          Uihelper.CustomText(text: "You've tried to register +91${phonenumber}", height: 14 ,color: Color(0XFF5E5E5E),fontWeight: FontWeight.bold),
          SizedBox(height: 10,),
          Uihelper.CustomText(text: "recently. Wait before requesting an sms or a call." , height: 14 ,color: Color(0XFF5E5E5E),fontWeight: FontWeight.bold),
          SizedBox(height: 10,),
          Uihelper.CustomText(text: " With your code." , height: 14 ,color: Color(0XFF5E5E5E),fontWeight: FontWeight.bold),
          Uihelper.CustomText(text: " Wrong Number? " , height: 14 ,color: Color(0XFF00A884),fontWeight: FontWeight.bold),

          SizedBox(height: 50,),
          ]
        ),
      ),
    );
  }
}