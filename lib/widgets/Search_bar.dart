import 'package:flutter/material.dart';

class SearchBarS extends StatelessWidget {
  const SearchBarS({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        top: 50,
        bottom: 200,
        child: Divider(
          color: Colors.black,
          thickness: 10,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          width: 600,
          decoration: BoxDecoration(
            color: Colors.grey[200],
          ),
          child: TextField(
            style: TextStyle(color: Colors.white),
            cursorColor: Colors.purple,
            decoration: InputDecoration(
                hintText: 'What are you looking for?',
                hintStyle: TextStyle(color: Colors.grey[400]),
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(15.0),
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search, color: Colors.black),
                ),
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.scanner,
                      color: Colors.black,
                    ))),
          ),
        ),
      ),
    ]);
  }
}
