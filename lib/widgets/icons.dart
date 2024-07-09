import 'package:flutter/material.dart';

class icons extends StatelessWidget {
  IconData iconss;
  Color iconcolor;
  void Function() buttonaction;
  icons({
    required this.iconss,
    required this.buttonaction,
    required this.iconcolor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: IconButton(
          onPressed: buttonaction,
          icon: Icon(
            iconss,
            color: iconcolor,
            size: 25,
          )),
    );
  }
}
