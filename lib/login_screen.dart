import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Sign In",
              style: TextStyle(
                color: Color(0XFF0b4096),
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Lorem Epsum This is login page, Lorem Epsum This is login page",
              style: TextStyle(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ),

          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 70,
                  child: Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/faceebook.png",
                          height: 30,
                          width: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("Facebook"),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(child: SizedBox(height: 70, child: Card())),
            ],
          ),
        ],
      ),
    );
  }
}
