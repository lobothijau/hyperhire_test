import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

var comments = [
  "“가격 저렴해요”",
  "“CPU온도 고온”",
  "“서멀작업 가능해요”",
  "“게임 잘 돌아가요”",
  "“발열이 적어요”"
];

class ProfilePage extends StatelessWidget {
  final String assetName;
  final String name;

  ProfilePage({super.key, required this.assetName, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Column(
          children: [
            Text(
              "랭킹 1위",
              style: TextStyle(color: Colors.grey, fontSize: 12.0),
            ),
            Text(
              "베스트 리뷰어",
              style: TextStyle(color: Colors.black),
            )
          ],
        ),
        elevation: 2.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            CircleAvatar(
              backgroundImage: AssetImage(assetName),
              radius: 48,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(name,
                style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w500)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/icons/crown.png",
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "골드",
                  style: TextStyle(
                      color: Color(0xffffd233),
                      fontWeight: FontWeight.w700,
                      fontSize: 16.0),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.all(Radius.circular(6.0))),
              child: const Text("조립컴 업체를 운영하며 리뷰를 작성합니다."),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              height: 16,
              color: Colors.grey[200],
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text("작성한 리뷰",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20.0)),
                  Text("총 35개"),

                ],
              ),
            ),
            const Divider(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromRGBO(206, 206, 206, 2),
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4.0))),
                    child: Stack(
                      children: [
                        Image.asset(
                          "assets/images/reviews/amd.png",
                          width: 100,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "AMD 라이젠 5 5600X 버미어",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(fontWeight: FontWeight.w700),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          "정품 멀티팩",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(fontWeight: FontWeight.w500),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            RatingBar(
                              ignoreGestures: true,
                              itemSize: 30,
                              minRating: 2,
                              maxRating: 5,
                              initialRating: 3,
                              glowColor: Colors.transparent,
                              direction: Axis.horizontal,
                              allowHalfRating: false,
                              ratingWidget: RatingWidget(
                                full: Image.asset(
                                  "assets/images/icons/star_full.png",
                                  width: 25,
                                  height: 25,
                                ),
                                // full: const Icon(Icons.star, color:yellow_FFC800),
                                empty: Image.asset(
                                  "assets/images/icons/star_empty.png",
                                  width: 25,
                                  height: 25,
                                ),
                                half: Image.asset(
                                  "assets/images/icons/star_empty.png",
                                  width: 25,
                                  height: 25,
                                ),
                              ),
                              onRatingUpdate: (double value) {},
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "4.07",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 20.0),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/reviewer/cat10.png"),
                        radius: 24,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Name01"),
                          Row(
                            children: <Widget>[
                              RatingBar(
                                ignoreGestures: true,
                                itemSize: 16,
                                minRating: 2,
                                maxRating: 5,
                                initialRating: 3,
                                glowColor: Colors.transparent,
                                direction: Axis.horizontal,
                                allowHalfRating: false,
                                ratingWidget: RatingWidget(
                                  full: Image.asset(
                                    "assets/images/icons/star_full.png",
                                    width: 25,
                                    height: 25,
                                  ),
                                  // full: const Icon(Icons.star, color:yellow_FFC800),
                                  empty: Image.asset(
                                    "assets/images/icons/star_empty.png",
                                    width: 25,
                                    height: 25,
                                  ),
                                  half: Image.asset(
                                    "assets/images/icons/star_empty.png",
                                    width: 25,
                                    height: 25,
                                  ),
                                ),
                                onRatingUpdate: (double value) {},
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "2022.12.09",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/images/icons/bookmark.png",
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 16.0),
              child: Row(
                children: comments.map((comment) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text(
                      comment,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                    child:
                        Image.asset("assets/images/icons/lightning_color.png"),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Expanded(
                    child: Text(
                      "멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                    child: Image.asset(
                      "assets/images/icons/lightning_empty.png",
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Expanded(
                    child: Text(
                      "3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한 느낌 까지는 아닙니다.",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 12.0),
              child: Row(
                children:
                    ["image1.png", "image2.png", "image3.png"].map((image) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(2.0),
                      child: Image.asset(
                        "assets/images/$image",
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const Divider(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/icons/comment.png",
                    width: 24,
                  ),
                  const Text(
                    "댓글 달기..",
                    style: TextStyle(color: Color(0xFF616161)),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 16,
              color: Colors.grey[200],
            ),
          ],
        ),
      ),
    );
  }
}
