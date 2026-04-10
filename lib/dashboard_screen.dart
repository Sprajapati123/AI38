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
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios),
        actions: [Icon(Icons.more_horiz)],
        title: Text("sandis"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Image.asset("assets/images/user.png",
                  height: 100,
                  width: 100),

              Column(children: [Text("174"), Text("Posts")]),

              Column(children: [Text("1M"), Text("Followers")]),

              Column(children: [Text("174k"), Text("Following")]),
            ],
          ),
        ],
      ),
    );
  }
}
