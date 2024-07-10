import 'package:flutter/material.dart';
import 'package:hyperhire_test/components/review.dart';

class TopReviews extends StatelessWidget {
  const TopReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 28),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("제일 핫한 리뷰를 만나보세요",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith()),
                        Text(
                          "리뷰️  랭킹⭐ top 3",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.chevron_right,
                    size: 24.0,
                  )
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Review(
                assetName: "assets/images/icons/review1.png",
                productImage: "assets/images/reviews/lg.png",
                title: 'LG전자 스탠바이미 27ART10AKPL (스탠)',
                reviews: [
                  "화면을 이동할 수 있고 전환도 편리하다는 점이 제일 마음에 들었어요.",
                  "배송도 빠르고 친절하게 받을 수 있어서 좋았습니다."
                ],
                rating: 4.89,
                reviewCount: 216,
                tags: ['LG전자', '편리성'],
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Review(
                assetName: "assets/images/icons/review2.png",
                productImage: "assets/images/reviews/led.png",
                title: 'LG전자  울트라HD 75UP8300KNA (스탠드)',
                reviews: [
                  "화면 잘 나오고... 리모컨 기능 좋습니다.",
                  "넷플 아마존 등 버튼하나로 바로 접속 되고디스플레이는 액정문제 없어보이고소리는 살짝 약간 감이 있으나 ^^; 시끄러울까봐 그냥 블루투스 헤드폰 구매 예정이라 문제는 없네요. 아주 만족입니다!!"
                ],
                rating: 4.36,
                reviewCount: 136,
                tags: ['LG전자', '고화질'],
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Review(
                assetName: "assets/images/icons/review3.png",
                productImage: "assets/images/reviews/smarttv.png",
                title: '라익미 스마트 DS4001L NETRANGE (스탠드)GX30K WIN10 (SSD 256GB)',
                reviews: [
                  "반응속도 및 화질이나 여러면에서도 부족함을  느끼기에는 커녕 이정도에 이 정도 성능이면차고 넘칠만 합니다",
                  "중소기업TV 라익미 제품을 사용해보았는데 뛰어난 가성비와 더불어OTT 서비스에 오픈 브라우저 까지 너무 마음에 들게끔 기능들을 사용 가능했고"
                ],
                rating: 4.89,
                reviewCount: 216,
                tags: ['LG전자', '편리성'],
              ),
            ],
          ),
        ),

      ],
    );
  }
}
