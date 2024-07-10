import 'package:flutter/material.dart';
import 'package:hyperhire_test/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HyperMedia',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(),
        useMaterial3: false,
        fontFamily: "NotoSansKR"
      ),
      home: const HomePage(),
    );
  }
}
