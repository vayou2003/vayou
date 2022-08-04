import 'package:delivery/Login.dart';
import 'package:delivery/Products.dart';
import 'package:delivery/welcome.dart';
import 'package:flutter/material.dart';
import 'package:delivery/Profile.dart';

class AppDrawer extends StatelessWidget {
  // const AppDrawer({Key? key}) : super(key: key);
//
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 0.7),
        children: [
          DrawerHeader(
              child: Text(
            'Menu',
            style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 10, 20, 161),
                fontWeight: FontWeight.bold),
          )),

          //start home
          ListTile(
            title: Text(
              "Home",
              style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 235, 43, 209),
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Welcome()));
            },
          ),
          // End home

          //start profile
          ListTile(
            title: Text(
              "Profile",
              style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 235, 43, 209),
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            },
          ),

          //end profile

          //start product
          ListTile(
            title: Text(
              "Product",
              style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 235, 43, 209),
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Products()));
            },
          ),

          //start signOut
          ListTile(
            title: Text(
              "Signout",
              style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 235, 43, 209),
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
          ),
          //End LogOut
        ],
      ),
    );
  }
}
