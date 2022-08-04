import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30),
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Color.fromARGB(255, 235, 102, 35),
          Color.fromARGB(255, 207, 150, 63)
        ])),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: SizedBox(
                width: 100,
                height: 100,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/loco.jpg"),
                    ),
                    Positioned(
                        bottom: 20.0,
                        right: 2.0,
                        child: Container(
                          height: 40,
                          width: 40,
                          child: Icon(
                            Icons.add_a_photo,
                            color: Color.fromARGB(255, 234, 232, 235),
                          ),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 186, 183, 224),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ))
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 1,
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: <Widget>[
                              Text(
                                "My Profile",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 40),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "welcome Back",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        //Username
                        SizedBox(
                          height: 5,
                        ),

                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(360),
                            color: Color.fromARGB(255, 234, 238, 241),
                          ),
                          child: TextField(
                            //obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'ປ້ອນບັນຊີຜູ້ໃຊ້',
                              icon: Icon(
                                Icons.person,
                                color: Color.fromARGB(255, 10, 37, 59),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),

                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(360),
                            color: Color.fromARGB(255, 229, 233, 236),
                          ),
                          child: TextField(
                            //obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'ປ້ອນວັນເດືອນປີເກີດ',
                              icon: Icon(
                                Icons.cake,
                                color: Color.fromARGB(255, 10, 37, 59),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),

                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(360),
                            color: Color.fromARGB(255, 227, 232, 236),
                          ),
                          child: TextField(
                            //obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'ປ້ອນເບີໂທລະສັບ',
                              icon: Icon(
                                Icons.phone,
                                color: Color.fromARGB(255, 10, 37, 59),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),

                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(360),
                            color: Color.fromARGB(255, 226, 229, 232),
                          ),
                          child: TextField(
                            //obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'ປ້ອນລະຫັດຜ່ານ',
                              icon: Icon(
                                Icons.password,
                                color: Color.fromARGB(255, 10, 37, 59),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(360),
                            color: Color.fromARGB(255, 226, 229, 232),
                          ),
                          child: TextField(
                            //obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'ປ້ອນອີເມວຜູ້ໃຊ້ງານ',
                              icon: Icon(
                                Icons.email,
                                color: Color.fromARGB(255, 10, 37, 59),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 150,
                      vertical: 30,
                    ),
                  ),
                  //Start Edit Proflie
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      minimumSize: const Size(100, 30),
                      maximumSize: const Size(100, 30),
                    ),
                    child: Text(
                      "Loguot",
                      style:
                          TextStyle(fontSize: 15, color: Colors.pink.shade500),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
