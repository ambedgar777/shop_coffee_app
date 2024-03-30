import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget{
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text('NOTIFICATION', style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
}