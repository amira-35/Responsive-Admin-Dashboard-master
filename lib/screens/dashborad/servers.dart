// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';

class Servers extends StatefulWidget {
  static const String id = "users-screen";

  @override
  State<Servers> createState() => _ServersState();
}

class _ServersState extends State<Servers> {
  final listeVendor = {'user1', 'user2', 'user3'};
  String? initUser1, initUser2;
  String? value1, value2;

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Card(
            elevation: 20,
            margin: EdgeInsets.symmetric(horizontal: 200, vertical: 70),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
            child: Container(
              width: double.infinity,
              height: 650.0,
              child: Padding(
                padding: EdgeInsets.all(35.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: FlatButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Image.asset(
                                      'assets/icons/Logout Rounded Left_64px.png')),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          Container(
                            child: Row(children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  child: Text(
                                    "Server Manager",
                                    style: TextStyle(
                                      fontSize: 40.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                          SizedBox(
                            height: 50.0,
                          ),
                          Container(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 80.0,
                                ),
                                Container(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      child: Text(
                                        "Nom",
                                        style: TextStyle(
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 100.0,
                                ),
                                Container(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      child: Text(
                                        "Port",
                                        style: TextStyle(
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 110.0,
                                ),
                                Container(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      child: Text(
                                        "Actions",
                                        style: TextStyle(
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: appPadding * 2),
                            child: Divider(
                              color: grey,
                              thickness: 0.8,
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 80.0,
                                ),
                                Container(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      child: Text(
                                        "Serveur 1",
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 95.0,
                                ),
                                Container(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      child: Text(
                                        "Port 1",
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 100.0,
                                ),
                                Container(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.bottomCenter,
                                          child: RaisedButton(
                                            onPressed: () {
                                              /*Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                             DashBoardScreen()),
                                  );
                                  print(usercontroller
                                      .text); // affichage de text qui sont dans les deux field !
                                  print(passwordcontroller.text);*/
                                            },
                                            color: Colors.grey,
                                            child: const Text("Start",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        Container(
                                          alignment: Alignment.bottomCenter,
                                          child: RaisedButton(
                                            onPressed: () {
                                              /*Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                             DashBoardScreen()),
                                  );
                                  print(usercontroller
                                      .text); // affichage de text qui sont dans les deux field !
                                  print(passwordcontroller.text);*/
                                            },
                                            color: Colors.grey,
                                            child: const Text("Stop",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        Container(
                                          alignment: Alignment.bottomCenter,
                                          child: RaisedButton(
                                            onPressed: () {
                                              /*Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                             DashBoardScreen()),
                                  );
                                  print(usercontroller
                                      .text); // affichage de text qui sont dans les deux field !
                                  print(passwordcontroller.text);*/
                                            },
                                            color: Colors.grey,
                                            child: const Text("Reread",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: appPadding * 2),
                            child: Divider(
                              color: grey,
                              thickness: 0.8,
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 80.0,
                                ),
                                Container(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      child: Text(
                                        "Serveur 2",
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 95.0,
                                ),
                                Container(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      child: Text(
                                        "Port 2",
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 100.0,
                                ),
                                Container(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.bottomCenter,
                                          child: RaisedButton(
                                            onPressed: () {
                                              /*Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                             DashBoardScreen()),
                                  );
                                  print(usercontroller
                                      .text); // affichage de text qui sont dans les deux field !
                                  print(passwordcontroller.text);*/
                                            },
                                            color: Colors.grey,
                                            child: const Text("Start",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        Container(
                                          alignment: Alignment.bottomCenter,
                                          child: RaisedButton(
                                            onPressed: () {
                                              /*Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                             DashBoardScreen()),
                                  );
                                  print(usercontroller
                                      .text); // affichage de text qui sont dans les deux field !
                                  print(passwordcontroller.text);*/
                                            },
                                            color: Colors.grey,
                                            child: const Text("Stop",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        Container(
                                          alignment: Alignment.bottomCenter,
                                          child: RaisedButton(
                                            onPressed: () {
                                              /*Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                             DashBoardScreen()),
                                  );
                                  print(usercontroller
                                      .text); // affichage de text qui sont dans les deux field !
                                  print(passwordcontroller.text);*/
                                            },
                                            color: Colors.grey,
                                            child: const Text("Reread",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: appPadding * 2),
                            child: Divider(
                              color: grey,
                              thickness: 0.8,
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 80.0,
                                ),
                                Container(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      child: Text(
                                        "Serveur 3",
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 95.0,
                                ),
                                Container(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      child: Text(
                                        "Port 3",
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 100.0,
                                ),
                                Container(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.bottomCenter,
                                          child: RaisedButton(
                                            onPressed: () {
                                              /*Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                             DashBoardScreen()),
                                  );
                                  print(usercontroller
                                      .text); // affichage de text qui sont dans les deux field !
                                  print(passwordcontroller.text);*/
                                            },
                                            color: Colors.grey,
                                            child: const Text("Start",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        Container(
                                          alignment: Alignment.bottomCenter,
                                          child: RaisedButton(
                                            onPressed: () {
                                              /*Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                             DashBoardScreen()),
                                  );
                                  print(usercontroller
                                      .text); // affichage de text qui sont dans les deux field !
                                  print(passwordcontroller.text);*/
                                            },
                                            color: Colors.grey,
                                            child: const Text("Stop",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        Container(
                                          alignment: Alignment.bottomCenter,
                                          child: RaisedButton(
                                            onPressed: () {
                                              /*Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                             DashBoardScreen()),
                                  );
                                  print(usercontroller
                                      .text); // affichage de text qui sont dans les deux field !
                                  print(passwordcontroller.text);*/
                                            },
                                            color: Colors.grey,
                                            child: const Text("Reread",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: appPadding * 2),
                            child: Divider(
                              color: grey,
                              thickness: 0.8,
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 80.0,
                                ),
                                Container(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      child: Text(
                                        "Serveur 4",
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 95.0,
                                ),
                                Container(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      child: Text(
                                        "Port 2",
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 100.0,
                                ),
                                Container(
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.bottomCenter,
                                          child: RaisedButton(
                                            onPressed: () {
                                              /*Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                             DashBoardScreen()),
                                  );
                                  print(usercontroller
                                      .text); // affichage de text qui sont dans les deux field !
                                  print(passwordcontroller.text);*/
                                            },
                                            color: Colors.grey,
                                            child: const Text("Start",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        Container(
                                          alignment: Alignment.bottomCenter,
                                          child: RaisedButton(
                                            onPressed: () {
                                              /*Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                             DashBoardScreen()),
                                  );
                                  print(usercontroller
                                      .text); // affichage de text qui sont dans les deux field !
                                  print(passwordcontroller.text);*/
                                            },
                                            color: Colors.grey,
                                            child: const Text("Stop",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        Container(
                                          alignment: Alignment.bottomCenter,
                                          child: RaisedButton(
                                            onPressed: () {
                                              /*Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                             DashBoardScreen()),
                                  );
                                  print(usercontroller
                                      .text); // affichage de text qui sont dans les deux field !
                                  print(passwordcontroller.text);*/
                                            },
                                            color: Colors.grey,
                                            child: const Text("Reread",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //fin de liste
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
/**
 * Expanded(
                      flex: 3,
                      child: Container(
                        child: Row(children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              child: Text(
                                "Nom",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              child: Text(
                                "Port",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              child: Text(
                                "Actions",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                        ]),
                      ),
                    ),
 */
