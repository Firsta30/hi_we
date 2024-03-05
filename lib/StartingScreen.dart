import 'package:flutter/material.dart';
import 'package:hi_we/NextScreen.dart';
import 'package:icons_flutter/icons_flutter.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class StartingScreen extends StatefulWidget {
  @override
  State<StartingScreen> createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 50,
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Color.fromARGB(255, 254, 60, 124),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NextScreen(),
              ));
        },
        child: Icon(
          FlutterIcons.play_circle_outline_mdi,
          color: Color.fromARGB(255, 232, 91, 91),
          size: 55,
        ),
        backgroundColor: Color.fromARGB(255, 250, 223, 223),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(
        children: [
          ClipPath(
            clipper: WaveClipperTwo(),
            child: Container(
              height: 220,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("image/"))),
            ),
          )
        ],
      ),
    );
  }
}
