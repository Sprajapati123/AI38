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
      appBar: AppBar(
        actions: [
          Icon(Icons.search,color: Colors.white,),
          Icon(Icons.notifications,color: Colors.white,),
        ],
        leading: Icon(Icons.menu,color: Colors.white,),
        backgroundColor: Colors.red,
        title: Text("Dashboard",style: TextStyle(
          color: Colors.white
        ),),
      ),
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
