import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  final String assetName;
  final String productImage;
  final String title;
  final List<String> reviews;
  final double rating;
  final int reviewCount;
  final List<String> tags;

  const Review(
      {super.key,
      required this.assetName,
      required this.productImage,
      required this.title,
      required this.reviews,
      required this.rating,
      required this.reviewCount,
      required this.tags});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromRGBO(206, 206, 206, 2),
              ),
              borderRadius: const BorderRadius.all(Radius.circular(4.0))),
          child: Stack(
            children: [
              Image.asset(
                productImage,
                width: 100,
              ),
              Image.asset(assetName)
            ],
          ),
        ),
        const SizedBox(width: 10,),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.w700),
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 10,
              ),
              ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      const Icon(
                        Icons.circle,
                        size: 6.0,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Flexible(
                        child: Text(
                          reviews[index],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  );
                },
                itemCount: reviews.length,
                shrinkWrap: true,
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Color(0xffffd233),
                  ),
                  const Text(
                    "4.89",
                    style: TextStyle(
                        color: Color(0xffffd233), fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "($reviewCount)",
                    style: const TextStyle(
                        fontWeight: FontWeight.w700, color: Color(0xffc4c4c4)),
                  )
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              SizedBox(
                width: double.infinity,
                child: Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 10,
                  children: tags.map((String tag) {
                    return Chip(
                      label: Text(
                        tag,
                        style: const TextStyle(
                            color: Color(0xFF868686), fontSize: 12),
                      ),
                      backgroundColor: const Color(0xffF0F0F0),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
