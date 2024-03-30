import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget{
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Text('FAVOURITE', style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
}