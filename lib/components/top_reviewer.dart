import 'package:flutter/material.dart';
import 'package:hyperhire_test/screens/profile_page.dart';
import '../models/reviewer.dart';

var reviewer = [
  Reviewer("assets/images/reviewer/cat1.png", "Name01", true),
  Reviewer("assets/images/reviewer/cat2.png", "Name02", false),
  Reviewer("assets/images/reviewer/cat3.png", "Name03", false),
  Reviewer("assets/images/reviewer/cat4.png", "Name04", false),
  Reviewer("assets/images/reviewer/cat5.png", "Name05", false),
  Reviewer("assets/images/reviewer/cat6.png", "Name06", false),
  Reviewer("assets/images/reviewer/cat7.png", "Name07", false),
  Reviewer("assets/images/reviewer/cat8.png", "Name08", false),
  Reviewer("assets/images/reviewer/cat9.png", "Name09", false),
  Reviewer("assets/images/reviewer/cat10.png", "Name10", false),
];

class TopReviewer extends StatelessWidget {
  const TopReviewer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 48.0, top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "골드 계급 사용자들이예요",
                  style: TextStyle(fontSize: 12.0, color: Color(0xFF616161)),
                ),
                Text(
                  "베스트 리뷰어 🏆 Top10",
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 16.0),
            child: Row(
              children: reviewer.map((review) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            child: CircleAvatar(
                              backgroundImage: AssetImage(review.assetName),
                              radius: 36,
                            ),
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ProfilePage(
                                    assetName: review.assetName,
                                    name: review.name,
                                  ),
                                ),
                              );
                            },
                          ),
                          Text(review.name),
                        ],
                      ),
                      review.isTopReviewer
                          ? Image.asset(
                              "assets/images/icons/crown.png",
                            )
                          : Container(),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
