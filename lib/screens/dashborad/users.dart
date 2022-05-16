import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/screens/components/header_text.dart';
import 'package:responsive_admin_dashboard/screens/components/text_feild.dart';

class Users extends StatelessWidget {
  static const String id = "users-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Card(
            elevation: 20,
            margin: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
            child: SizedBox(
              width: double.infinity,
              height: 650.0,
              child: Padding(
                padding: EdgeInsets.all(35.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                child: Text(
                                  "Gestion des  Utilisateurs ",
                                  style: TextStyle(
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 50.0),
                            FlatButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Image.asset(
                                    'assets/icons/Logout Rounded Left_64px.png')),

                            // ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          TextField(
                            //controller: passwordcontroller, // la var qu'on va ecrire dans le champ password va etre sauvergarder dans passwordcontroller !
                            keyboardType: TextInputType.visiblePassword,

                            decoration: InputDecoration(
                              labelText:
                                  'abcd@DESKTOP', // quand je commance a ecrire ce message va desparaitre
                              //par contre si on utilise LabelText : '..' , ne va pas
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(
                                Icons.person_add,
                              ),
                              /*suffixIcon: Icon(
                                  Icons.remove_red_eye,
                                ),*/
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Container(
                            alignment: Alignment.center,
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
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                //topLeft: Radius.circular(15)
                              )),
                              color: const Color.fromARGB(221, 233, 128, 8),
                              child: const Text("Ajouter",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          TextField(
                            //controller: passwordcontroller, // la var qu'on va ecrire dans le champ password va etre sauvergarder dans passwordcontroller !
                            keyboardType: TextInputType.visiblePassword,

                            decoration: InputDecoration(
                              labelText:
                                  'abcd@DESKTOP', // quand je commance a ecrire ce message va desparaitre
                              //par contre si on utilise LabelText : '..' , ne va pas
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(
                                Icons.person_remove,
                              ),
                              /*suffixIcon: Icon(
                                  Icons.remove_red_eye,
                                ),*/
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Container(
                            alignment: Alignment.center,
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
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                // topLeft: Radius.circular(15)
                              )),
                              color: const Color.fromARGB(221, 233, 128, 8),
                              child: const Text("Supprimer",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                          SizedBox(height: 20.0),
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

  /**Center(
          child: Card(
            elevation: 20,
            margin: EdgeInsets.symmetric(horizontal: 130, vertical: 25),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
            child: SizedBox(
              width: double.infinity,
              height: 650.0, */
/*
  Widget buildCustomTextField(String title, String hinText, bool isPassword) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
        TextFormField(
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: hinText,
            prefixIcon: Icon(Icons.person),
          ),
        )
      ],
    );
  }
}
*/
}
