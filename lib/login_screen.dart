import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/main_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // String label = "label kosong";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          "Login",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: "username",
                  hintText: "masukkan username.."),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  labelText: "password",
                  hintText: "masukkan password.."),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(() => MainPage());
                setState(() {
                  usernameController.text;
                });
              },
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
