import 'package:begining_of_new_chapter/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
var arrcount = [
  {
    "name": "Hemant Kumar",
    "lastmessage": "Hello, how are you?",
    "time": "10:30 AM",
    "image": "https://img.magnific.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg",
    "msg": "1"
  },
  {
    "name": "juhi Di",
    "lastmessage": "Whats'up bro",
    "time": "9:15 AM",
    "image": "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29ufGVufDB8fDB8fHww",
    "msg": "2"
  },
  {
    "name": "Himanshu Hemant Friend",
    "lastmessage": "Can you send me the files?",
    "time": "Yesterday",
    "image": "https://img.magnific.com/free-photo/young-handsome-man-wearing-casual-tshirt-blue-background-happy-face-smiling-with-crossed-arms-looking-camera-positive-person_839833-12963.jpg?semt=ais_hybrid&w=740&q=80",
    "msg": "3"
  },
    {
    "name": "Vishal Kumar",
    "lastmessage": "Hello, how are you?",
    "time": "10:30 AM",
    "image": "https://img.magnific.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg",
    "msg": "1"
  },
  {
    "name": "Roshni Di",
    "lastmessage": "Good Morning bro",
    "time": "9:15 AM",
    "image": "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29ufGVufDB8fDB8fHww",
    "msg": "2"
  },
  {
    "name": "Abhishek Tiwari",
    "lastmessage": "Ranchi se ghum ke aate hn",
    "time": "Yesterday",
    "image": "https://img.magnific.com/free-photo/young-handsome-man-wearing-casual-tshirt-blue-background-happy-face-smiling-with-crossed-arms-looking-camera-positive-person_839833-12963.jpg?semt=ais_hybrid&w=740&q=80",
    "msg": "6"
  },
    {
    "name": "Shivansh Kumar",
    "lastmessage": "Hello, how are you?",
    "time": "10:30 AM",
    "image": "https://img.magnific.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg",
    "msg": "1"
  },
  {
    "name": "Ankita Bhaga",
    "lastmessage": "Good Morning , Har Har Mahadev",
    "time": "9:15 AM",
    "image": "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29ufGVufDB8fDB8fHww",
    "msg": "2"
  },
 
];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:  

Column(
  children: [
    SizedBox(height: 10,),
    Expanded(
      child: ListView.builder(itemBuilder: (context, index) => ListTile(
            leading: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(arrcount[index]["image"].toString()),
            ),
            title: Uihelper.CustomText(text: arrcount[index]["name"].toString(),height:16,fontWeight: FontWeight.bold),
            subtitle: Uihelper.CustomText(text: arrcount[index]["lastmessage"].toString(),height: 14,color:   Color(0XFF889095)),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center, 
              children: [
                Uihelper.CustomText(text: arrcount[index]["time"].toString(),height: 14),
                SizedBox(height: 5,),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Color(0XFF00A884),
                  child: Uihelper.CustomText(text: arrcount[index]["msg"].toString(),height: 12,color: Colors.white),
                )
              ],
            ),
          ), itemCount: arrcount.length),
    ),
  ],
),
floatingActionButton: CircleAvatar(
  radius: 30,
  backgroundColor: Color(0XFF00A884),
  child: Icon(Icons.message, color: Colors.white),
),
    );
  }
}