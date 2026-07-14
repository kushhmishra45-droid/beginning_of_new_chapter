import 'package:flutter/material.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Camera", style: TextStyle(height: 30, color: Colors.black, fontWeight: FontWeight.bold)),
      ),
    );
  }
}