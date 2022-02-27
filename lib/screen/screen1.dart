import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'homePage.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6158E7),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.elliptical(50, 60),
                topRight: Radius.elliptical(50, 60),
              ),
              color: Colors.white,
            ),
            margin: EdgeInsets.only(top: 10.0),
            padding: EdgeInsets.all(25),
            width: double.infinity,
            height: 350,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Easiest Way to Manage Your Wallet',
                  maxLines: 2,
                  style: TextStyle(
                    color: Color(0xFF0A0E21),
                    fontSize: 40.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  'Connect your wallet to your friends family brand and experience',
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: RawMaterialButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HomePage();
                            },
                          ),
                        );
                      });
                    },
                    child: Icon(
                      Icons.chevron_right_rounded,
                      color: Colors.white,
                      size: 50,
                    ),
                    constraints: BoxConstraints.tightFor(
                      width: 70.0,
                      height: 70.0,
                    ),
                    shape: CircleBorder(),
                    fillColor: Color(0xff59CBF0),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
