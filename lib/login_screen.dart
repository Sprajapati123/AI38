import 'package:ai38ai/components/login_card.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool visibility = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
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

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  child: LoginCard("assets/images/faceebook.png", "Facebook"),
                ),

                SizedBox(width: 15),

                Expanded(
                  child: LoginCard("assets/images/google.png", "Google"),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey.shade300,
                    thickness: 2,
                    height: 3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text("OR"),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey.shade300,
                    thickness: 2,
                    height: 3,
                  ),
                ),
              ],
            ),
          ),

          TextFormField(
            controller: emailController,
            // maxLines: 5,
            validator: (value) {
              if (value == null) {
                return "email can't be null";
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
              // suffixIcon: Icon(Icons.visibility),
              hint: Text("abc@gmail.com"),
              // label: Text("Email"),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
              filled: true,
              fillColor: Colors.grey.shade100,
            ),
          ),
          SizedBox(height: 15),
          TextFormField(
            controller: passwordController,
            obscureText: visibility,
            // maxLines: 5,
            validator: (value) {
              if (value == null) {
                return "password can't be null";
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.password),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    visibility = !visibility;
                  });
                },
                icon: Icon(
                  visibility == true ? Icons.visibility : Icons.visibility_off,
                ),
              ),
              hint: Text("********"),
              // label: Text("Email"),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
              ),
              filled: true,
              fillColor: Colors.grey.shade100,
            ),
          ),
        ],
      ),
    );
  }
}
