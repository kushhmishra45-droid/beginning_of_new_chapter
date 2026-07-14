import 'package:begining_of_new_chapter/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CallsScreen extends StatefulWidget {

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  var callcontent = [
    {
      "name": "Hemant Kumar",
      "calltime": "Today, 12:30 PM",
      "image":
          "https://img.magnific.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg",
    },
    {
      "name": "juhi Di",
      "calltime": "Yesterday, 10:30 PM",
      "image":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29ufGVufDB8fDB8fHww",
    },
    {
      "name": "Himanshu Hemant Friend",
      "calltime": "15 Days Ago",
      "image": "https://img.magnific.com/free-photo/young-handsome-man-wearing-casual-tshirt-blue-background-happy-face-smiling-with-crossed-arms-looking-camera-positive-person_839833-12963.jpg?semt=ais_hybrid&w=740&q=80",
    },
    {
      "name": "Abhishek Kumar",
      "calltime": "Today, 12:30 PM",
      "image":
          "https://img.magnific.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg",
    },
    {
      "name": "Meena Rani",
      "calltime": "Yesterday, 10:30 PM",
      "image":
          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29ufGVufDB8fDB8fHww",
    },
    {
      "name": "Himanshu Hemant Friend",
      "calltime": "15 Days Ago",
      "image": "https://img.magnific.com/free-photo/young-handsome-man-wearing-casual-tshirt-blue-background-happy-face-smiling-with-crossed-arms-looking-camera-positive-person_839833-12963.jpg?semt=ais_hybrid&w=740&q=80",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Column(children: [
  SizedBox(height: 20),
     Row(
      children: [
        SizedBox(width: 20),
          Uihelper.CustomText(text: "Recent Calls" , height: 20, fontWeight: FontWeight.bold, color: Color(0XFF5E5E5E),),
         ]),
         SizedBox(height: 20),
        Expanded(
          child: ListView.builder(
            itemCount: callcontent.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(callcontent[index]["image"].toString()),
                ),
                title: Uihelper.CustomText(text: callcontent[index]["name"].toString(), height: 18, fontWeight: FontWeight.bold,),
                subtitle: Uihelper.CustomText(text: callcontent[index]["calltime"].toString(), height: 14, fontWeight: FontWeight.normal,),
                trailing: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.call, color: Color(0XFF00A884),),
                ),
              );
            },
          ),
        )
      ],
),
    );
  }
}