
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0)
            ),
            labelText: "검색어를 입력하세요",
            contentPadding: const EdgeInsets.fromLTRB(16.0, 10.0, 6.0, 16.0),
            suffixIcon: const Icon(Icons.search)
        ),

      ),
    );
  }
}
