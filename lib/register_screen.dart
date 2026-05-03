import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool visibility = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
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
            controller: nameController,
            // maxLines: 5,
            validator: (value) {
              if (value == null) {
                return "name can't be null";
              }
              return null;
            },
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
              // suffixIcon: Icon(Icons.visibility),
              hint: Text("Ram ...."),
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
            controller: addressController,
            // maxLines: 5,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
              // suffixIcon: Icon(Icons.visibility),
              hint: Text("kathmandu..."),
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
