import 'package:flutter/material.dart';

Widget buildCustomTextField(String title, String hinText, bool isPassword) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyle(fontSize: 15, color: Colors.black),
      ),
      TextFormField(
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hinText,
          prefixIcon: Icon(Icons.person),
        ),
      )
    ],
  );
}
