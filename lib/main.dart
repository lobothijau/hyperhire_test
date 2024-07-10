import 'package:flutter/material.dart';
import 'package:hyperhire_test/screens/home_page.dart';

List<NavigationDestination> appBarDestinations = [
  NavigationDestination(
    icon: Image.asset("assets/images/icons/home.png"),
    label: '홈',
  ),
  NavigationDestination(
    icon: Image.asset("assets/images/icons/category.png"),
    label: '카테고리',
  ),
  NavigationDestination(
    icon: Image.asset("assets/images/icons/community.png"),
    label: '커뮤니티',
  ),
  NavigationDestination(
    icon: Image.asset("assets/images/icons/mypage.png"),
    label: '마이페이지',
  )
];

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
          fontFamily: "NotoSansKR"),
      home: const ContainerPage(),
    );
  }
}

class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key});

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  int tab = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [
      const HomePage(),
      const Center(
        child: Text(
          '카테고리',
          style: TextStyle(fontSize: 32.0),
        ),
      ),
      const Center(
        child: Text(
          '커뮤니티',
          style: TextStyle(fontSize: 32.0),
        ),
      ),
      const Center(
        child: Text(
          '마이페이지',
          style: TextStyle(fontSize: 32.0),
        ),
      ),
    ];

    return Scaffold(
      body: IndexedStack(
        index: tab,
        children: pages,
      ),
      bottomNavigationBar: NavigationBar(
        elevation: 8.0,
        backgroundColor: Colors.white,
        selectedIndex: tab,
        onDestinationSelected: (index) {
          setState(() {
            tab = index;
          });
        },
        destinations: appBarDestinations,
      ),
    );
  }
}

