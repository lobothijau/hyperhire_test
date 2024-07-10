import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:hyperhire_test/components/custom_search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Image.asset("assets/images/logo.png"),
        elevation: 2.0,
      ),
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          const CustomSearchBar(),
          FlutterCarousel(
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
          )
        ],
      ),
    );
  }
}
