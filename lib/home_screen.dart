import 'package:ai38ai/user_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<UserModel> list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setData();
  }

  setData() {
    list.add(UserModel(image: "assets/images/bird.png", name: "Bird"));
    list.add(UserModel(image: "assets/images/fish.png", name: "Fish"));
    list.add(UserModel(image: "assets/images/cat.png", name: "Cat"));
    list.add(UserModel(image: "assets/images/dog.png", name: "Dog"));
    list.add(
        UserModel(image: "assets/images/bettafish.jpg", name: "Betta Fish"));
    list.add(
        UserModel(image: "assets/images/chinchilla.jpeg", name: "Chinchilla"));
    list.add(UserModel(image: "assets/images/guppy.jpg", name: "Guppy"));
    list.add(UserModel(image: "assets/images/hamster.png", name: "Hamster"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(
              height: 120,
              child: ListView.builder(
                  itemCount: list.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                       // CircleAvatar(
                       //  radius: 20
                       //   backgroundImage: AssetImage(list[index].image),
                       // ),
                        Image.asset(list[index].image,height: 60,width: 60,),
                        Text(list[index].name),
                      ],
                    );
                  }
              ),
            ),

            ListView.builder(
              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (context,index) => Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 10,
                              backgroundImage: AssetImage(list[index].image),
                            ),
                            Text(list[index].name),
                          ],
                        ),
                      ),

                      Expanded(
                          flex: 1,
                          child: Icon(Icons.more_horiz))
                    ],
                  )
                ],
              ),
            ),


            SizedBox(
              height: 200,
              child: ElevatedButton(onPressed: () {}, child: Text("Submit")),
            ),
            SizedBox(
              height: 200,
              child: ElevatedButton(onPressed: () {}, child: Text("Submit")),
            ),
            SizedBox(
              height: 200,
              child: ElevatedButton(onPressed: () {}, child: Text("Submit")),
            ),
            SizedBox(
              height: 200,
              child: ElevatedButton(onPressed: () {}, child: Text("Submit")),
            ),
            SizedBox(
              height: 200,
              child: ElevatedButton(onPressed: () {}, child: Text("Submit")),
            ),
            SizedBox(
              height: 200,
              child: ElevatedButton(onPressed: () {}, child: Text("Submit")),
            ),
            SizedBox(
              height: 200,
              child: ElevatedButton(onPressed: () {}, child: Text("Submit")),
            ),
            SizedBox(
              height: 200,
              child: ElevatedButton(onPressed: () {}, child: Text("Submit")),
            ),
            SizedBox(
              height: 200,
              child: ElevatedButton(onPressed: () {}, child: Text("Submit")),
            ),
            SizedBox(
              height: 200,
              child: ElevatedButton(onPressed: () {}, child: Text("Submit")),
            ),
          ],
        ),
      ),
    );
  }
}
