import 'package:flutter/material.dart';

import 'dashboard_screen.dart';

void main(){
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AI38",
      home: DashboardScreen(),
    );
  }
}
