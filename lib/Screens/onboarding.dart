//import 'package:begining_of_new_chapter/widgets/uihelper.dart';
import 'package:begining_of_new_chapter/Screens/login.dart';
import 'package:begining_of_new_chapter/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
 
  Widget build(BuildContext context) {
    return Scaffold (
       body: Center(
         child: Column(

       mainAxisAlignment: MainAxisAlignment.center,
           children: [
          Column(children: [ 
             Image.asset("assets/image1.png"),
          SizedBox(height: 50,),
          Uihelper.CustomText(text: "Welcome to Whatsapp" , height: 18 ,color: Color(0XFF000000),fontWeight: FontWeight.bold), 

          SizedBox(height: 20,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Uihelper.CustomText(text: "Read out" , height: 14 ,color: Color(0XFF5E5E5E),fontWeight: FontWeight.normal),
                    Uihelper.CustomText(text: " Privacy policy " , height: 14 ,color: Color(0XFF0C42CC),fontWeight: FontWeight.normal),
                    Uihelper.CustomText(text: " Tap ''Agree and continue'' " , height: 14 ,color: Color(0XFF5E5E5E),fontWeight: FontWeight.normal),
                  ],
                 ),
                     Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Uihelper.CustomText(text: "to accept the" , height: 14 ,color: Color(0XFF5E5E5E),fontWeight: FontWeight.normal),
                    Uihelper.CustomText(text: "Teams of service" , height: 14 ,color: Color(0XFF0C42CC),fontWeight: FontWeight.normal),
                    
                  ],
                 ) ,
                
          ],
         ),
           ],
       ),
       ),
       floatingActionButton: Uihelper.CustomButton( callback: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
       } ,buttonname: "Agree and continue", ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );

   
  }
}