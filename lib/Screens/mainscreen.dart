import 'package:begining_of_new_chapter/Screens/homescreen.dart';
import 'package:begining_of_new_chapter/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Mainscreen extends StatelessWidget {
  const Mainscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
       // mainAxisAlignment: MainAxisAlignment.center,
          children: [
        SizedBox(height: 70,),
           Uihelper.CustomText(text: "Profile info" , height: 18 ,color: Color(0XFF00A884),fontWeight: FontWeight.bold),
          SizedBox(height: 20,),
          Uihelper.CustomText(text: "Please provide your name and an optional" , height: 16 ,color: Color(0XFF5E5E5E),fontWeight: FontWeight.bold),
          Uihelper.CustomText(text: "profile picture." , height: 16,color: Color(0XFF5E5E5E),fontWeight: FontWeight.bold),
          SizedBox(height: 50,),
          GestureDetector(
            onTap: () {
              _openImagePicker(context);
            },
            child: CircleAvatar(
              radius: 104,
              backgroundColor: Color(0XFFD9D9D9),
              child: Icon(Icons.person, size: 50, color: Color(0XFF5E5E5E),),
            ),
          ),
          SizedBox(height: 50,),
  Row(
     mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(
        width: 200,
        child: TextField(
         keyboardType: TextInputType.name,
          decoration: InputDecoration(
            hintText: "Enter your name",
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0XFF00A884)),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0XFF00A884)),
            ),
          ),
        ),
      ),
      SizedBox(width: 10,),
       Image.asset("assets/happy.png"),
    ],
  ),
   
          ]
        ),
      ),
      floatingActionButton: Uihelper.CustomButton( callback: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
       } ,buttonname: "Next", ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
  _openImagePicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          width: 200,
          color: Color(0XFFD9D9D9),
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.camera_alt),
                title: Text('Take a photo'),
                onTap: () {
                  // Handle camera option
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.photo_library),
                title: Text('Choose from gallery'),
                onTap: () {
                  // Handle gallery option
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}