import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  ImageSlider({
    super.key,
    required this.currentSlide,
    required this.onCHange,
  });
  final Function(int) onCHange;
  final int currentSlide;
  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 220,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: PageView(
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              onPageChanged: widget.onCHange,
              physics: ClampingScrollPhysics(),
              children: [
                Image.asset(
                  "Assets/Images/slider3.jpeg",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "Assets/Images/slider2.png",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "Assets/Images/slider1.jpg",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "Assets/Images/Group 58.jpg",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "Assets/Images/slider4.jpg",
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
            bottom: 10,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      5,
                      (index) => AnimatedContainer(
                            duration: Duration(microseconds: 300),
                            width: widget.currentSlide == index ? 15 : 8,
                            height: 8,
                            margin: EdgeInsets.only(right: 3),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: widget.currentSlide == index
                                    ? Colors.black
                                    : Colors.transparent,
                                border: Border.all(
                                  color: Colors.black,
                                )),
                          ))),
            ))
      ],
    );
  }
}
