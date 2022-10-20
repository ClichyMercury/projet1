import 'dart:async';

import 'package:flutter/material.dart';
import 'package:projet1/pages/connexion.dart';
import 'package:projet1/pages/page1.dart';

class Page2 extends StatefulWidget {
  const Page2({
    Key? key,
  }) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          // ignore: prefer_const_constructors
          builder: (_) => connexion(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 70, 9, 15),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/bugatti.png',
              height: 120,
            ),
            CircularProgressIndicator(
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
