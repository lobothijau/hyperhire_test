import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "LOGO Inc.",
            style: TextStyle(color: Colors.grey[700], fontSize: 20.0),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("회사 소개"),
              Container(
                color: Colors.grey[700],
                width: 1.0,
                height: 10.0,
              ),
              Text("인재 채용"),
              Container(
                color: Colors.grey[700],
                width: 1.0,
                height: 10.0,
              ),
              Text("기술 블로그"),
              Container(
                color: Colors.grey[700],
                width: 1.0,
                height: 10.0,
              ),
              Text("리뷰 저작권"),
            ],
          ),
          const SizedBox(height: 16,),
          Row(
            children: [
              Image.asset("assets/images/icons/send.png"),
              const SizedBox(width: 10,),
              Text("review@logo.com", style: TextStyle(color: Colors.grey[700], fontSize: 16.0),),
            ],
          ),
          const SizedBox(height: 20.0,),
          Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[400],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text("@2022-2022 LOGO Lab, Inc. (주)아무개  서울시 강남구", style: TextStyle(color: Colors.grey[700], fontSize: 12.0),),
          ),
        ],
      ),
    );
  }
}
