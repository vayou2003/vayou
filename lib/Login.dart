import 'package:delivery/singup.dart';
import 'package:delivery/welcome.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  //const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              child: Image.asset('images/loco.jpg', fit: BoxFit.fill),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    "WAVE DELIVERY",
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue),
                    child: TextField(
                      style:
                          TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                          color: Color.fromARGB(255, 243, 245, 246),
                        ),
                        hintText: 'Enter Username',
                        hintStyle:
                            TextStyle(fontSize: 20.0, color: Colors.white10),
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
                  ElevatedButton(
                      style: ButtonStyle(),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => singup(),
                          ),
                        );
                      },
                      child: Text("singup")),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Welcome(),
                          ),
                        );
                      },
                      child: Text("login")),
                  //Text("Login Button"),
                  //Text("Sign Up Link"),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
