import 'package:flutter/material.dart';
import 'AppDrawer.dart';

class Welcome extends StatelessWidget {
  //const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: AppDrawer(),
      ),
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Hello World"),
          ],
        ),
      ),
    );
  }
}
