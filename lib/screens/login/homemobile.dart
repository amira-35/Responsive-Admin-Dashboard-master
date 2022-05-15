// ignore_for_file: file_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/screens/dashborad/dash_board_screen.dart';

class HomeMobile extends StatelessWidget {
  var usercontroller = TextEditingController();
  var passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 20,
          margin: EdgeInsets.symmetric(horizontal: 70, vertical: 50),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Login",
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(height: 50.0),
                  TextField(
                    controller: usercontroller,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText:
                          'Username', // quand je commance a ecrire ce message va desparaitre
                      //par contre si on utilise LabelText : '..' , ne va pas
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.person_pin_circle_sharp,
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  TextField(
                    controller:
                        passwordcontroller, // la var qu'on va ecrire dans le champ password va etre sauvergarder dans passwordcontroller !
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true, //...... dans le champ de password
                    decoration: InputDecoration(
                      labelText:
                          'Password', // quand je commance a ecrire ce message va desparaitre
                      //par contre si on utilise LabelText : '..' , ne va pas
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    alignment: Alignment.center,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DashBoardScreen()),
                        );
                        print(usercontroller
                            .text); // affichage de text qui sont dans les deux field !
                        print(passwordcontroller.text);
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                              topLeft: Radius.circular(15))),
                      color: const Color.fromARGB(221, 233, 128, 8),
                      child: const Text("Confirm",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
