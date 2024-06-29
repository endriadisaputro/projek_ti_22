import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          'BELAJAR FLUTTER',
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Home',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
