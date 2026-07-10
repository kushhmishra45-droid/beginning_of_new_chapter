import 'package:begining_of_new_chapter/Screens/otpscreen.dart';
import 'package:begining_of_new_chapter/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

TextEditingController phoneController = TextEditingController();

String selectedCountry = "India";

  List<String> countries = ["India", "USA", "UK", "Canada", "Australia"];

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
          Uihelper.CustomText(text: "WhatsApp will need to verify your phone number" , height: 14 ,color: Color(0XFF5E5E5E),fontWeight: FontWeight.bold),
          SizedBox(height: 10,),
          Uihelper.CustomText(text: "Carrier charges may apply." , height: 14 ,color: Color(0XFF5E5E5E),fontWeight: FontWeight.bold),
          SizedBox(height: 10,),
          Uihelper.CustomText(text: " What’s my number?" , height: 14 ,color: Color(0XFF00A884),fontWeight: FontWeight.bold),
          SizedBox(height: 50,),

                    Padding(
            padding: const EdgeInsets.only(left: 60, right: 60),
            child: DropdownButtonFormField(items: countries.map((country) {
              return DropdownMenuItem(
                child: Text(country.toString()), value: country,
              );  
            }).toList(), onChanged: (newvalue){
              setState(() {
                selectedCountry = newvalue!;
              });
            },value: selectedCountry,decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0XFF00A884)),
              ),
                focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0XFF00A884)),
              ),
            ),
            ),
          ),
          
          SizedBox(height: 30,),
       Row(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
           SizedBox(
            width: 40,
            child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "+91",
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884)),
                  ),
                    focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884)),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884)),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10,),
          SizedBox(
            width: 250,
            child:TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "Phone Number",
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884)),
                  ),
                    focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884)),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884)),
                  ),
                ),
              ),
              ),
         ],
       )
          ],
        ),
      ),
        floatingActionButton: Uihelper.CustomButton( callback: () {
     login(phoneController.text.toString());
  //      Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen()));
       } ,buttonname: "Next", ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
    
  }
  login(String phonenumber){
    if(phonenumber==""){
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Enter your phone number"),backgroundColor: Colors.green,));
    }
    else{
      Navigator.push(context, MaterialPageRoute(builder:(context)=>OtpScreen(phonenumber: phonenumber,)));
    }
  }
}