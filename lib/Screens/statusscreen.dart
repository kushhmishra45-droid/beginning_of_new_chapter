import 'package:begining_of_new_chapter/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  
var statusarrcount = [
  {
    "name": "Hemant Kumar",
    "statustime": "1 Day ago",
    "image": "https://img.magnific.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg",
  },
  {
    "name": "juhi Di",
    "statustime": "10 Days ago",
    "image": "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29ufGVufDB8fDB8fHww",
  },
  {
    "name": "Himanshu Hemant Friend",
    "statustime": "15 Days Ago",
    "image": "https://img.magnific.com/free-photo/young-handsome-man-wearing-casual-tshirt-blue-background-happy-face-smiling-with-crossed-arms-looking-camera-positive-person_839833-12963.jpg?semt=ais_hybrid&w=740&q=80",
  },
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:  Column(
        children: [
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Stack(
                  children:[ CircleAvatar(
                    radius: 40,
                    backgroundColor: Color(0XFFD9D9D9),
                    child: Icon(Icons.person, size: 30, color: Color(0XFF5E5E5E),),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0XFF00A884),
                        child: Icon(Icons.add, size: 20, color: Colors.white,),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Uihelper.CustomText(text: "My Status", height: 16,fontWeight: FontWeight.bold),
                  Uihelper.CustomText(text: "Tap to add status update", height: 14,color:   Color(0XFF889095)),
                ],
              )
            ],
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 20 , right: 20),
            child: Row(
             mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10,),
                Uihelper.CustomText(text: "Recent updates", height: 16,fontWeight: FontWeight.bold),
                Icon(Icons.keyboard_arrow_down, color: Color(0XFF5E5E5E),)  
              ],
            ),
          ),
          SizedBox(height: 10,),
          Expanded (
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: statusarrcount.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(statusarrcount[index]["image"].toString()),
                  ),
                  title: Uihelper.CustomText(text: statusarrcount[index]["name"].toString(),height:16,fontWeight: FontWeight.bold),
                  subtitle: Uihelper.CustomText(text: statusarrcount[index]["statustime"].toString(),height: 14,color:   Color(0XFF889095)),
                );
              },
            ),
          ),
        ],
),
    );
  }
}