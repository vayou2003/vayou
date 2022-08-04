import 'package:delivery/MyListView.dart';
import 'package:delivery/mylistbuilder.dart';
import 'package:flutter/material.dart';
import 'Login.dart';
import '_loading.dart';

void main(List<String> args) {
  runApp(Delivery());
}

class Delivery extends StatelessWidget {
  //const Delivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lao-Top Delivery',
      home: MyListBuider(),
    );
  }
}
