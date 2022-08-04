import 'package:flutter/material.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class MyListBuider extends StatefulWidget {
  MyListBuider({Key? key}) : super(key: key);

  @override
  State<MyListBuider> createState() => _MyListBuiderState();
}

class _MyListBuiderState extends State<MyListBuider> {
  List pets = [];
  bool isLoading = true;
  void fetchPets() async {
    var url = Uri.https("60f9bc967ae59c0017165f11.mockapi.io", "/pets");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var items = convert.jsonDecode(response.body);
      setState(() {
        pets = items;
        isLoading = false;
      });
      print(response.body);
    } else {
      print("Can not Fetch");
    }
  }

  @override
  Widget build(BuildContext context) {
    // final List<List<String>> pets = <List<String>>[
    //   ['Dog', 'Lily'],
    //   ['Cat', 'Garfield'],
    //   ['Fish', 'Bob'],
    //   ['Dragon', 'Wave'],
    // ];

    fetchPets();

    //CircularProgessIndecator()
    if (!isLoading) {
      return Material(
        child: Center(
          child: CircularProgressIndicator(
            color: Color.fromARGB(255, 216, 39, 74),
          ),
        ),
      );
    }

    return Material(
      child: ListView.builder(
        itemCount: pets.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            color: Color.fromARGB(255, 146, 226, 255),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 237, 233, 234),
                    backgroundImage: NetworkImage(pets[index]['avatar']),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        pets[index]['name'],
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(pets[index]['type']),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: IconButton(
                    onPressed: (() => null),
                    icon: Icon(
                      Icons.phone,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
