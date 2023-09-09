import 'package:flutter/material.dart';

Color red = Color.fromARGB(255, 169, 14, 14);

final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
  minimumSize: Size(50, 50),
  backgroundColor: red,
  elevation: 0,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(30.0),   
      topRight: Radius.circular(30.0),   
      bottomLeft: Radius.circular(60.0), 
      bottomRight: Radius.circular(60.0), 
    ),
  ),
);
