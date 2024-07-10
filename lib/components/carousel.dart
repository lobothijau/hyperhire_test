import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterCarousel(
      options: CarouselOptions(
          height: 220.0,
          showIndicator: true,
          slideIndicator: const CircularSlideIndicator(),
          autoPlay: true,

          autoPlayAnimationDuration: const Duration(seconds: 2),
          viewportFraction: 1.0),
      items: ["banner1.jpg", "banner2.jpg", "banner3.jpg", "banner4.jpg"]
          .map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/sliders/$i"),
                    fit: BoxFit.cover),
                color: Colors.red,
              ),
              width: MediaQuery.of(context).size.width,
            );
          },
        );
      }).toList(),
    );
  }
}
