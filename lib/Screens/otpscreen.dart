import 'package:begining_of_new_chapter/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
        //  mainAxisAlignment: MainAxisAlignment.center,
          children: [
        SizedBox(height: 70,),
          Uihelper.CustomText(text: "Verifying your number" , height: 20 ,color: Color(0XFF00A884),fontWeight: FontWeight.normal),
          SizedBox(height: 30,),
          Uihelper.CustomText(text: "You've tried to register +911234567890 ", height: 14 ,color: Color(0XFF5E5E5E),fontWeight: FontWeight.normal),
          Uihelper.CustomText(text: "recently. Wait before requesting an sms or a call." , height: 14 ,color: Color(0XFF5E5E5E),fontWeight: FontWeight.normal),
          Uihelper.CustomText(text: " With your code." , height: 14 ,color: Color(0XFF5E5E5E),fontWeight: FontWeight.normal),
          Uihelper.CustomText(text: " Wrong Number? " , height: 14 ,color: Color(0XFF00A884),fontWeight: FontWeight.normal),

          SizedBox(height: 50,),

          DropdownButtonFormField(items: countries.map((country) {
            return DropdownMenuItem(
              child: Text(country.toString()), value: country,
            );  
          }).toList(), onChanged: (value){
            setState(() {
              selectedCountry = value.toString();
            });
          }
          ],
        ),
      ),
    );
  }
}