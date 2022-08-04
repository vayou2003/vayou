import 'package:delivery/Login.dart';
import 'package:flutter/material.dart';

class singup extends StatelessWidget {
  //const welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        title: Text("singup"),
      ),

      //body

      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.blue),
              child: TextField(
                style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 243, 245, 246),
                  ),
                  hintText: 'Enter Username',
                  hintStyle: TextStyle(fontSize: 20.0, color: Colors.white10),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //Text("Input Username"),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                obscureText: true,
                style: TextStyle(
                  fontSize: 22.0,
                  color: Color(0xFFbdc6cf),
                ),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.key,
                    color: Color.fromARGB(255, 243, 245, 246),
                  ),
                  hintText: 'Enter Password',
                  hintStyle: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white10,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //Text("Input Username"),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                obscureText: true,
                style: TextStyle(
                  fontSize: 22.0,
                  color: Color(0xFFbdc6cf),
                ),
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.key,
                    color: Color.fromARGB(255, 243, 245, 246),
                  ),
                  hintText: 'Enter Email',
                  hintStyle: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white10,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already a member'),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Color.fromARGB(255, 255, 0, 200)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
