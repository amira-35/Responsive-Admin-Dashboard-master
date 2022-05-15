import 'package:flutter/material.dart';

import 'package:responsive_admin_dashboard/screens/dashborad/dash_board_screen.dart';

class HomeDesktop extends StatelessWidget {
  HomeDesktop({Key? key}) : super(key: key);

  var usercontroller = TextEditingController();

  var passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Card(
            elevation: 20,
            margin: EdgeInsets.symmetric(horizontal: 130, vertical: 25),
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
                            Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 60.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
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
                              obscureText:
                                  true, //...... dans le champ de password
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
                            SizedBox(height: 50.0),
                            Container(
                              alignment: Alignment.center,
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                             DashBoardScreen()),
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
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(17.0),
                          child: Image.asset(
                            "images/sonalogo.jpg",
                            fit: BoxFit.cover,
                            height: double.infinity,
                            width: double.infinity,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

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

   //SizedBox(height: 50.0),
                            /*TextField(
                              decoration: InputDecoration(
                                hintText: "Username",
                              ),
                            ),
                            
 
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Username",
                            ),
                          ),                           
                            
                            
                            */
                            /** Container(
                              child: RaisedButton(
                                onPressed: () {
                                  //print(usercontroller
                                  //  .text); // affichage de text qui sont dans les deux field !
                                  //print(passwordcontroller.text);
                                },
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(25),
                                        bottomRight: Radius.circular(25),
                                        topLeft: Radius.circular(25))),
                                color: const Color.fromARGB(221, 233, 128, 8),
                                child: const Text("Confirm",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                            ), */