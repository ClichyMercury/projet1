import 'package:flutter/material.dart';

class connexion extends StatelessWidget {
  const connexion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 50.0,
          horizontal: 30.0,
        ),
        child: Form(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset(
                  'assets/images/bugatti.png',
                  height: 100,
                  width: 100,
                ),
                Center(
                  child: Text('créer votre compte ici',
                      style: Theme.of(context).textTheme.titleLarge),
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 15.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'mot de passe',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 15.0),
                FlatButton(
                  onPressed: () {},
                  color: Colors.black,
                  child: Text(
                    "Connexion",
                    style: TextStyle(color: Colors.white),
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: 50.0, vertical: 5.0),
                ),
              ]),
        ),
      )),
    );
  }
}
