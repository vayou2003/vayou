import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  //const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: Center(
          child: Column(
        children: [
          Text("Profile"),
        ],
      )),
    );
  }
}
