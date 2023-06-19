import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:tugas_besar/pages/product_page/product_page.dart';

import '../../models/product.dart';
import 'homepage_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Product product;

  int _currentIndex = 0;
  final PageController _pageController = PageController();

  tapBottomItem(int index) {
    if (index != 4) {
      setState(() {
        _currentIndex = index;
      });
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  void initState() {
    _pageController.addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: PageView(
        controller: _pageController,
        children: const [
          HomeScreen(),
          ProductPage(),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 12,
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          showUnselectedLabels: false,
          selectedItemColor: const Color.fromARGB(255, 7, 11, 129),
          unselectedItemColor: Colors.grey,
          onTap: tapBottomItem,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                LineIcons.home,
              ),
              label: "Beranda",
            ),
            BottomNavigationBarItem(
              icon: Icon(LineIcons.box),
              label: "Produk",
            ),
            BottomNavigationBarItem(
              icon: Icon(LineIcons.shoppingBag),
              label: "Keranjang",
            ),
            BottomNavigationBarItem(
              icon: Icon(LineIcons.history),
              label: "Riwayat",
            ),
          ],
        ),
      ),
    );
  }
}
