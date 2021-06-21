import 'package:flutter/material.dart';
import 'package:startyourtour/loginpage.dart';
import 'package:startyourtour/signuppage.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(children: [
      Image(
          fit: BoxFit.cover,
          width: width,
          height: height,
          image: AssetImage(
            'assets/bus.gif',
          )),
      Positioned(
          top: height * 0.18,
          left: width * 0.131,
          child: Text(
            'Start Your Tour',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.orange),
          )),
      Positioned(
          width: width * 0.6,
          bottom: height * 0.12,
          right: width * 0.2,
          child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ))),
              child: Container(
                  child: Text(
                'I\'m A Traveller',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LoginPage(isAgent: false)),
                );
              })),
      Positioned(
          bottom: height * 0.039,
          right: width * 0.2,
          width: width * 0.6,
          child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ))),
              child: Container(
                  child: Text(
                'I\'m a Travel Agent',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LoginPage(
                            isAgent: true,
                          )),
                );
              }))
    ]));
  }
}
