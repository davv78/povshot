import 'package:flutter/material.dart';

import 'home.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    // _naviagatorHome();
  }

  _naviagatorHome() async {
    await Future.delayed(Duration(seconds: 6), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => Home(
                  title: "Home",
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.blueAccent,
            ),
            Container(
               child: Text("Splash",style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
           ),), 
            )
          ],
        ),
      ),
    );
  }
}
