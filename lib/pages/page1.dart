import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:projet1/conponents/Linebutton.dart';
import 'package:projet1/conponents/homebull.dart';
import 'package:projet1/pages/button.dart';
import 'package:projet1/pages/page2.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> sadio = [
    "assets/images/anubis.png",
    "assets/images/fly.png",
    "assets/images/food.png",
    "assets/images/galaxy.png",
    "assets/images/japon.png"
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CarouselSlider(
                  items: sadio
                      .map((item) => Container(
                            child: Center(
                              child: Image.asset(
                                item,
                                fit: BoxFit.cover,
                                //width: 1000,
                              ),
                            ),
                          ))
                      .toList(),
                  options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                      height: 500),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Wrap(
                  spacing: 10,
                  runSpacing: 15,
                  children: [
                    Homebull(
                        iconmod: Icons.child_care,
                        iconcolor: Colors.orange,
                        iconsize: 25,
                        Titre: "CHLDREN",
                        titrecolor: Colors.orange,
                        titresize: 15,
                        desc: "keep an eye on their perfomance",
                        descsize: 8,
                        desccolor: Colors.orange,
                        containercolor: Color.fromARGB(255, 109, 72, 91),
                        boxcolor: Colors.black,
                        widthcontainer: 160,
                        heightContainer: 160,
                        rad: 10),
                    Homebull(
                        iconmod: Icons.email_outlined,
                        iconcolor: Color.fromARGB(255, 255, 255, 255),
                        iconsize: 25,
                        Titre: "NOTICE",
                        titrecolor: Color.fromARGB(255, 255, 255, 255),
                        titresize: 15,
                        desc: "School notifications for you",
                        descsize: 8,
                        desccolor: Color.fromARGB(255, 255, 255, 255),
                        containercolor: Color.fromARGB(255, 30, 100, 143),
                        boxcolor: Colors.black,
                        widthcontainer: 160,
                        heightContainer: 160,
                        rad: 10)
                  ],
                ),
              ),
              SizedBox(height: 10),
              Wrap(
                spacing: 15,
                children: [
                  Homebull(
                      iconmod: Icons.account_balance_sharp,
                      iconcolor: Colors.red,
                      iconsize: 20,
                      containercolor: Color.fromARGB(255, 35, 137, 127),
                      boxcolor: Colors.black,
                      widthcontainer: 65,
                      heightContainer: 65,
                      rad: 150),
                  Homebull(
                      iconmod: Icons.tab,
                      iconcolor: Colors.blue,
                      iconsize: 20,
                      containercolor: Color.fromARGB(255, 34, 87, 34),
                      boxcolor: Colors.black,
                      widthcontainer: 65,
                      heightContainer: 65,
                      rad: 150),
                  Homebull(
                      iconmod: Icons.eco_rounded,
                      iconcolor: Colors.green,
                      iconsize: 20,
                      containercolor: Color.fromARGB(255, 38, 50, 113),
                      boxcolor: Colors.black,
                      widthcontainer: 65,
                      heightContainer: 65,
                      rad: 150),
                  Homebull(
                      iconmod: Icons.settings,
                      iconcolor: Color.fromARGB(255, 168, 168, 168),
                      iconsize: 20,
                      containercolor: Color.fromARGB(255, 28, 57, 107),
                      boxcolor: Colors.black,
                      widthcontainer: 65,
                      heightContainer: 65,
                      rad: 150)
                ],
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  lButton(
                    iconmood: Icons.hail_rounded,
                    mot: "choose your path",
                    motcolor: Colors.indigoAccent,
                    iconmood2: Icons.keyboard_arrow_right,
                    iconmood2color: Colors.red,
                  ),
                  Divider(),
                  lButton(
                    iconmood: Icons.emoji_symbols,
                    iconmoodcolor: Colors.red,
                    mot: "imac-15",
                    motcolor: Color.fromARGB(255, 139, 116, 44),
                    iconmood2: Icons.computer,
                    iconmood2color: Color.fromARGB(255, 89, 84, 70),
                  ),
                  Divider(),
                  lButton(
                    iconmood: Icons.emoji_symbols,
                    iconmoodcolor: Colors.red,
                    mot: "Zoom in",
                    motcolor: Color.fromARGB(255, 35, 33, 78),
                    iconmood2: Icons.zoom_in,
                    iconmood2color: Color.fromARGB(255, 188, 185, 179),
                  ),
                  Divider(),
                  lButton(
                    iconmood: Icons.emoji_symbols,
                    iconmoodcolor: Colors.red,
                    mot: "turn on",
                    motcolor: Color.fromARGB(255, 139, 44, 133),
                    iconmood2: Icons.u_turn_left,
                    iconmood2color: Color.fromARGB(255, 8, 186, 91),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
