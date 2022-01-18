import 'package:apkservice/users/akunpage.dart';
import 'package:apkservice/users/beranda.dart';
import 'package:apkservice/users/favoritepage.dart';
import 'package:apkservice/users/keranjangpage.dart';
import 'package:apkservice/users/transaksipage.dart';
import 'package:flutter/material.dart';
import 'package:apkservice/constans.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new Beranda(),
    new FavoritePage(),
    new KeranjangPage(),
    new TransaksiPage(),
    new AkunPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Palette.T,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _bottomNavCurrentIndex = index;
            });
          },
            currentIndex:
            _bottomNavCurrentIndex,
            items:
            [
            BottomNavigationBarItem(
                activeIcon: new Icon(
                  Icons.home,
                  color: Palette.T,
                ),
                icon: new Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
                label: 'Beranda',
              ),
              BottomNavigationBarItem(
                activeIcon: new Icon(
                  Icons.favorite,
                  color: Palette.T,
                ),
                icon: new Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                ),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                activeIcon: new Icon(
                  Icons.shopping_cart,
                  color: Palette.T,
                ),
                icon: new Icon(
                  Icons.shopping_cart,
                  color: Colors.grey,
                ),
                label: 'Keranjang',
              ),
              BottomNavigationBarItem(
                activeIcon: new Icon(
                  Icons.swap_horiz_sharp,
                  color: Palette.T,
                ),
                icon: new Icon(
                  Icons.swap_horiz_sharp,
                  color: Colors.grey,
                ),
                label: 'Transaksi',
              ),
              BottomNavigationBarItem(
                activeIcon: new Icon(
                  Icons.person,
                  color: Palette.T,
                ),
                icon: new Icon(
                  Icons.person_outline,
                  color: Colors.grey,
                ),
                label: 'Profile',
              ),
            ]
    )
    );
  }
}
