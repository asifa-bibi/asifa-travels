import 'package:flutter/material.dart';

import '../home-page.dart';
import 'bar-item-page.dart';
import 'my-page.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages =[
    HomePage(),
    BarItemPage(),
    SearchBar(),
    MyPage(),
  ];
  int currentIndex=0;
  void onTap(int index){
    setState(() {
      currentIndex= index;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(label:("Home"), icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label:("Bar"), icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(label:("Search"), icon: Icon(Icons.search)),
          BottomNavigationBarItem(label:("My"), icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}

