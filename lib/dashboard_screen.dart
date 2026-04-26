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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/images/user.png", height: 100, width: 100),

              Column(children: [Text("174"), Text("Posts")]),

              Column(children: [Text("1M"), Text("Followers")]),

              Column(children: [Text("174k"), Text("Following")]),
            ],
          ),
          Padding(
            // padding: const EdgeInsets.only(top: ,left: ,right: ,bottom: ),
            // padding: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(onTap: () {}, child: Text("Sandis Prajapati")),
                GestureDetector(
                    onTap: (){},
                    child: Text("Flutter Developer", style: TextStyle(color: Colors.grey))),
                Text("stw0066@softwarica.edu.np"),
                Text("Followed by ram and shyam"),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  print("i am clicked");
                },
                child: Text("Elevated"),
              ),
            ),
          ),
          TextButton(onPressed: () {}, child: Text("Text")),
          OutlinedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                foregroundColor: Colors.black,
                elevation: 5,
                side: BorderSide(width: 2,color: Colors.black),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {}, child: Text("Outlined")),
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
        ],
      ),
    );
  }
}
