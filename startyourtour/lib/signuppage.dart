import 'dart:ui';

import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  var isAgent = true;
  SignupPage({this.isAgent});
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  var loginc = TextEditingController();
  var passc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(children: [
          Image(
              fit: BoxFit.cover,
              width: width,
              height: height,
              image: AssetImage(
                'assets/bus.gif',
              )),
          Positioned(
            top: height * 0.3,
            left: width * 0.13,
            child: Text(
              'Sign Up Page',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.orange[400],
                  fontSize: 45,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: height * 0.39,
            left: width * 0.18,
            child: Text(
              widget.isAgent ? '(Travel Agent)' : '(Traveller)',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.orange[400],
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: height * 0.45,
            left: width * 0.1,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.rectangle,
                  color: Colors.grey),
              width: width * 0.8,
              height: height * 0.265,
              child: Form(
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    controller: loginc,
                    decoration: InputDecoration(
                        //hintText: 'test@123.gmail.com',
                        // hintStyle: TextStyle(color: Colors.white),
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    controller: passc,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                )
              ])),
            ),
          ),
          Positioned(
              left: width * 0.25,
              bottom: height * 0.26,
              width: width * 0.5,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ))),
                  child: Text(
                      widget.isAgent
                          ? 'Sign Up As An Agent'
                          : 'Sing Up As A Traveller',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  onPressed: () {}))
        ]));
  }
}
