import 'package:begining_of_new_chapter/Screens/mainscreen.dart';
import 'package:begining_of_new_chapter/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
 const OtpScreen({super.key, required this.phonenumber});

  final String phonenumber;

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
TextEditingController otp1controller =TextEditingController();

TextEditingController otp2controller =TextEditingController();

TextEditingController otp3controller =TextEditingController();

TextEditingController otp4controller =TextEditingController();

TextEditingController otp5controller =TextEditingController();

TextEditingController otp6controller =TextEditingController();

//String phonenumber;
  @override
 State<OtpScreen> createState() => _OtpScreenState();
//}

//class _OtpScreenState extends State<OtpScreen> {
//   get phonenumber => null;
  
  //  get child => null;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
          children: [
        SizedBox(height: 70,),
          Uihelper.CustomText(text: "Verifying your number" , height: 20 ,color: Color(0XFF00A884),fontWeight: FontWeight.bold),
          SizedBox(height: 30,),
          Uihelper.CustomText(text: "You've tried to register +91${widget.phonenumber}", height: 14 ,color: Color(0XFF5E5E5E),fontWeight: FontWeight.bold),
          SizedBox(height: 10,),
          Uihelper.CustomText(text: "recently. Wait before requesting an sms or a call." , height: 14 ,color: Color(0XFF5E5E5E),fontWeight: FontWeight.bold),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Uihelper.CustomText(text: " With your code." , height: 14 ,color: Color(0XFF5E5E5E),fontWeight: FontWeight.bold),
          SizedBox(width: 10,),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
              child: Uihelper.CustomText(
              text: "Wrong Number",
              color: Color(0XFF00A884),
              height: 15,
            ),
          ),
                ],
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Uihelper.CustomContainer(otp1controller),
              Uihelper.CustomContainer(otp2controller),
              Uihelper.CustomContainer(otp3controller),
              Uihelper.CustomContainer(otp4controller),
              Uihelper.CustomContainer(otp5controller),
              Uihelper.CustomContainer(otp6controller),
            ],
          ),
          SizedBox(height: 50,),
          Uihelper.CustomText(
            text: "Didn't receive the OTP ? ",
            height: 14,
            color: Color(0XFF00A884),
          ),
          ]
        ),
      ),
      floatingActionButton: Uihelper.CustomButton( callback: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Mainscreen()));
       } ,buttonname: "Next", ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}