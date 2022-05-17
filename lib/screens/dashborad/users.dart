// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';

class Users extends StatefulWidget {
  static const String id = "users-screen";

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  final items = {'Admin', ' User', 'Manager'};
  final listeUtilisateur = {'user1', 'user2', 'user3'};
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
            margin: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
            child: SizedBox(
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
                      flex: 3,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              child: Text(
                                "Ajouter un Utilisateur ",
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: TextField(
                              //controller: passwordcontroller, // la var qu'on va ecrire dans le champ password va etre sauvergarder dans passwordcontroller !
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                labelText:
                                    'Taper le nom ', // quand je commance a ecrire ce message va desparaitre
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
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            alignment: Alignment.topLeft,
                            child: TextField(
                              //controller: passwordcontroller, // la var qu'on va ecrire dans le champ password va etre sauvergarder dans passwordcontroller !
                              keyboardType: TextInputType.visiblePassword,

                              decoration: InputDecoration(
                                labelText:
                                    'Taper un mot de passe ', // quand je commance a ecrire ce message va desparaitre
                                //par contre si on utilise LabelText : '..' , ne va pas
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(
                                  Icons.password,
                                ),
                                /*suffixIcon: Icon(
                                  Icons.remove_red_eye,
                                ),*/
                              ),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 3),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border:
                                    Border.all(width: 1, color: Colors.grey)),
                            alignment: Alignment.topLeft,
                            child: DropdownButton<String>(
                              hint: Text("Choisissez un Role "),
                              value: value1,
                              isExpanded: true,
                              items: items.map(buildMenuItem).toList(),
                              onChanged: (value) =>
                                  setState(() => this.value1 = value),
                            ),
                          ),
                          SizedBox(height: 43.0),
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
                              child: const Text("Ajouter",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                          SizedBox(height: 20.0),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: VerticalDivider(
                        color: Colors.black,
                        thickness: 0.9,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              child: Text(
                                "Modifier un Utilisateur ",
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 3),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border:
                                    Border.all(width: 1, color: Colors.grey)),
                            alignment: Alignment.topLeft,
                            child: DropdownButton<String>(
                              hint: Text("Selectionner un Utilisateur"),
                              value: initUser1,
                              isExpanded: true,
                              items: listeUtilisateur
                                  .map<DropdownMenuItem<String>>((String User) {
                                return DropdownMenuItem<String>(
                                  child: Text(User),
                                  value: User,
                                );
                              }).toList(),
                              onChanged: (val) =>
                                  setState(() => this.initUser1 = val),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            alignment: Alignment.topLeft,
                            child: TextField(
                              //controller: passwordcontroller, // la var qu'on va ecrire dans le champ password va etre sauvergarder dans passwordcontroller !
                              keyboardType: TextInputType.visiblePassword,

                              decoration: InputDecoration(
                                labelText:
                                    'Taper le nouveau mot de passe ', // quand je commance a ecrire ce message va desparaitre
                                //par contre si on utilise LabelText : '..' , ne va pas
                                border: OutlineInputBorder(),
                                prefixIcon: Icon(
                                  Icons.password,
                                ),
                                /*suffixIcon: Icon(
                                  Icons.remove_red_eye,
                                ),*/
                              ),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 3),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border:
                                    Border.all(width: 1, color: Colors.grey)),
                            alignment: Alignment.topLeft,
                            child: DropdownButton<String>(
                              hint: Text("Choisissez un Role "),
                              value: value2,
                              isExpanded: true,
                              items: items.map(buildMenuItem).toList(),
                              onChanged: (value) =>
                                  setState(() => this.value2 = value),
                            ),
                          ),
                          SizedBox(height: 40.0),
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
                              child: const Text("Modifier",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  )),
                            ),
                          ),
                          SizedBox(height: 20.0),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: VerticalDivider(
                        color: Colors.black,
                        thickness: 0.9,
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              child: Text(
                                "Supprimer un Utilisateur ",
                                style: TextStyle(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 3),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border:
                                    Border.all(width: 1, color: Colors.grey)),
                            alignment: Alignment.topLeft,
                            child: DropdownButton<String>(
                              hint: Text("Selectionner un Utilisateur"),
                              value: initUser2,
                              isExpanded: true,
                              items: listeUtilisateur
                                  .map<DropdownMenuItem<String>>((String User) {
                                return DropdownMenuItem<String>(
                                  child: Text(User),
                                  value: User,
                                );
                              }).toList(),
                              onChanged: (val) =>
                                  setState(() => this.initUser2 = val),
                            ),
                          ),
                          SizedBox(height: 192.0),
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
                              child: const Text("Supprimer",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
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
}
