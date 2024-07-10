import 'package:flutter/material.dart';
import 'package:hyperhire_test/components/carousel.dart';
import 'package:hyperhire_test/components/custom_search_bar.dart';
import 'package:hyperhire_test/components/footer.dart';
import 'package:hyperhire_test/components/top_reviewer.dart';
import 'package:hyperhire_test/components/top_reviews.dart';

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
          const Carousel(),
          const TopReviews(),
          Container(
            width: double.infinity,
            height: 16,
            color: Colors.grey[200],
          ),
          const TopReviewer(),
          const Footer()
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
