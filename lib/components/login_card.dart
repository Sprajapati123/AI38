import 'package:flutter/material.dart';

Widget LoginCard(
    String image,
    String label
    ){
  return SizedBox(
    height: 70,
    child: Card(
      color: Colors.purple.shade50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 30,
            width: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(label),
          ),
        ],
      ),
    ),
  );
}