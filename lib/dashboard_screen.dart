import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Stories",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Colors.red,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline
              )),
          Icon(Icons.add),
          Row(children: [Text("Stories"), Icon(Icons.add)]),
        ],
      ),
    );
  }
}
