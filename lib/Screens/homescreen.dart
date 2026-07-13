import 'package:begining_of_new_chapter/Screens/callscreen.dart';
import 'package:begining_of_new_chapter/Screens/camerascreen.dart';
import 'package:begining_of_new_chapter/Screens/chatscreen.dart';
import 'package:begining_of_new_chapter/Screens/statusscreen.dart';
import 'package:begining_of_new_chapter/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, 
      child: Scaffold(        
              appBar: AppBar(
                elevation: 0,
                bottom:  TabBar(
                  tabs: [
                    Tab(icon: Icon(Icons.camera_alt)),
                    Tab(text: "CHATS"),
                    Tab(text: "STATUS"),
                    Tab(text: "CALLS"),
                  ],indicatorColor: Colors.white
                ),
                toolbarHeight: 125,
                title: Uihelper.CustomText(text: "Whatsapp", height: 20, color: Colors.white),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: IconButton(
                      icon: Image.asset("assets/Search.png",),
                      onPressed: () {
                        // Handle search button press
                      },
                    ),
                  ),
                ], 
              ), 
              body: TabBarView(children:  [
                CameraScreen(),
                ChatScreen(),
                StatusScreen(),
                CallsScreen(),
              ]),
        
      ),
    );
  }
}