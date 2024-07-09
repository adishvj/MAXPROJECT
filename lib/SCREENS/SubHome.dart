import 'package:flutter/material.dart';

import '../widgets/Category.dart';
import '../widgets/Search_bar.dart';
import '../widgets/icons.dart';
import '../widgets/image_slider.dart';

class Subhome extends StatefulWidget {
  const Subhome({super.key});

  @override
  State<Subhome> createState() => _SubhomeState();
}

class _SubhomeState extends State<Subhome> {
  @override
  Widget build(BuildContext context) {
    int currentSlider = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0, //for removing app bar shadow
        title: Row(
          children: [
            Text(
              "ma",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.indigo[900],
                  fontSize: 60),
            ),
            Text(
              "x",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.red[900],
                  fontSize: 60),
            ),
          ],
        ),
        actions: [
          icons(
              iconss: Icons.favorite_border_outlined,
              buttonaction: () {
                print("search button");
              },
              iconcolor: Colors.black),
          icons(
            iconss: Icons.notifications_outlined,
            buttonaction: () {
              print("chat screen");
            },
            iconcolor: Colors.black,
          )
        ],
      ),
      body: ListView(
        children: [
          SearchBarS(),
          Categories(),
          Container(
            height: 60,
            width: double.infinity,
            color: Colors.indigo[800],
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Max Mnia Sale! 6500+ Styles Under 399 + Extra 200",
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    )
                  ],
                ),
                Text(
                  "off on 1999.Code: MMS2200",
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ImageSlider(
              currentSlide: currentSlider,
              onCHange: (value) {
                setState(() {
                  currentSlider = value;
                });
              }),
          SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 10,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
