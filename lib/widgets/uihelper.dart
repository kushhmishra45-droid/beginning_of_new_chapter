
import 'package:flutter/material.dart';

class Uihelper{
  static CustomButton({required VoidCallback callback , required String buttonname}){

return SizedBox(

  height: 35,
  width: 300,
  child: ElevatedButton(onPressed:  (){
    callback();
  }, child: Text(buttonname,style: TextStyle(fontSize: 14, color: Colors.white),)),
);

  }

  static CustomText({required String text, required double height, Color? color,FontWeight? fontWeight}){
    return Text(text,style: TextStyle(fontSize: height,color: color??Color(0XFF5E5E5E),fontWeight: fontWeight),);
  }
}