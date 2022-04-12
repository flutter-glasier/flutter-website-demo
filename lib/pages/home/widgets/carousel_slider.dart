import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../helpers/theme_helper.dart';

List<String> imgList = [
  'assets/animation/web-designer-1.json',
  'assets/animation/web-designer-2.json',
  'assets/animation/web-designer-3.json',
];

class CarouselWithIndicatorDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: imageSliders,
      carouselController: _controller,
      options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          aspectRatio: 5 / 6,
          viewportFraction: 1.0,
          // height: getSize(376),
          onPageChanged: (index, reason) {
            setState(() {
              _current = index;
            });
          }),
    );
  }
}

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          margin: EdgeInsets.all(5.0),
          child: Lottie.asset(item),
        ))
    .toList();
