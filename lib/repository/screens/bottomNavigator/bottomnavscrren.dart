import 'package:blinkit_copy/repository/screens/cart/cartscreen.dart';
import 'package:blinkit_copy/repository/screens/category/categoryscreen.dart';
import 'package:blinkit_copy/repository/screens/home/homescreen.dart';
import 'package:blinkit_copy/repository/screens/print/printscreen.dart';
import 'package:blinkit_copy/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Bottomnavscrren extends StatefulWidget {
  const Bottomnavscrren({super.key});

  @override
  State<Bottomnavscrren> createState() => _BottomnavscrrenState();
}

class _BottomnavscrrenState extends State<Bottomnavscrren> {
  int currrentIndex = 0;
  List<Widget> pages = [
    Homescreen(),
    Categoryscreen(),
    CartScreen(),
    PrintScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currrentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Uihelper.customImage(img: "home 1"), label: "Home"),
          BottomNavigationBarItem(
              icon: Uihelper.customImage(img: "category 1"),
              label: "Categories"),
          BottomNavigationBarItem(
              icon: Uihelper.customImage(img: "shopping-bag 1"), label: "Cart"),
          BottomNavigationBarItem(
              icon: Uihelper.customImage(img: "printer 1"), label: "Print"),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currrentIndex,
        onTap: (index) {
          setState(() {
            currrentIndex = index;
          });
        },
      ),
    );
  }
}
