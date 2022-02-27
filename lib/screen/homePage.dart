import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final walletCard = [
    {
      "colour": Color(0xff675AE6),
      "name": "Arya Wijaya",
      "cardCode": "****  ****  ****  2600",
    },
    /*{
      "walletNumber": 2,
      "walletCard": WalletCard(
        colour: Color(0xff5AC7F7),
        name: "Arya Wijaya",
        cardCode: "****  ****  ****  2600",
        press: () {},
      ),
    },
    {
      "walletNumber": 3,
      "walletCard": WalletCard(
        colour: Color(0xff5AC7F7),
        name: "Arya Wijaya",
        cardCode: "****  ****  ****  2600",
        press: () {},
      ),
    },*/
  ];

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.insert_chart_rounded,
    Icons.email_rounded,
    Icons.person,
  ];

  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Hello",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            WalletCard(
              name: walletCard[0]['name'] as String,
              cardCode: walletCard[0]['cardCode'] as String,
              colour: walletCard[0]['colour'] as Color,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (indexDots) {
                return Container(
                  margin: const EdgeInsets.only(right: 8),
                  width: walletCard[indexDots]['walletNumber'] == indexDots
                      ? 25
                      : 8,
                  height: 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Color(0xff675AE6),
                  ),
                );
              }),
            )
          ],
        ),
      ),
      /*Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.blue,
            height: 250,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    */ /*margin: EdgeInsets.all(20),
                    width: 300.0,
                    color: Colors.red,
                    child: Stack(
                      children: [
                        Container(
                          height: 120.0,
                          width: 200.0,
                          color: Colors.deepPurpleAccent,
                        )
                      ],
                    ),*/ /*
                  );
                }),
          ),
          Text('Hello Bae', style: TextStyle(color: Colors.black)),
        ],
      ),*/
      bottomNavigationBar: Container(
        height: 82,
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Icon(
                    listOfIcons[index],
                    size: size.width * .076,
                    color: Color(0xffE1E1E1),
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 1500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  margin: EdgeInsets.only(
                    top: index == currentIndex ? 0 : size.width * .029,
                    right: size.width * .0422,
                    left: size.width * .0422,
                  ),
                  width: size.width * .153,
                  height: index == currentIndex ? size.width * .014 : 0,
                  decoration: BoxDecoration(
                    color: Color(0xff6058EB),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Wallet extends StatelessWidget {
  const Wallet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          /*WalletCard(
            colour: Color(0xff675AE6),
            name: "Arya Wijaya",
            cardCode: "****  ****  ****  2600",
            press: () {},
          ),
          WalletCard(
            colour: Color(0xff5AC7F7),
            name: "Arya Wijaya",
            cardCode: "****  ****  ****  2600",
            press: () {},
          ),
          WalletCard(
            colour: Color(0xff5AC7F7),
            name: "Arya Wijaya",
            cardCode: "****  ****  ****  2600",
            press: () {},
          ),*/
          SizedBox(
            width: 30,
          )
        ],
      ),
    );
  }
}

class WalletCard extends StatelessWidget {
  const WalletCard({
    Key? key,
    required this.name,
    required this.cardCode,
    required this.colour,
  }) : super(key: key);

  final String name, cardCode;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(left: 30, top: 10, bottom: 30),
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: size.width * 0.8,
        height: 250,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.all(Radius.circular(40)),
          boxShadow: [
            BoxShadow(
              offset: Offset(20, 5),
              blurRadius: 30,
              color: colour.withOpacity(0.30),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.60),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Text(
              cardCode,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Balance',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.60),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Rp. 10.500.000',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
