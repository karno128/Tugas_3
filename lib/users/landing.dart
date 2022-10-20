import 'package:flutter/material.dart';
import 'package:sebuah_halaman/constans.dart';
import 'package:sebuah_halaman/users/akunpage.dart';
import 'package:sebuah_halaman/users/beranda.dart';
import 'package:sebuah_halaman/users/favorite.dart';
import 'package:sebuah_halaman/users/keranjang.dart';
import 'package:sebuah_halaman/users/transaksi.dart';

class landing extends StatefulWidget {
  @override
  State<landing> createState() => _landingState();
}

class _landingState extends State<landing> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new beranda(),
    new favorite(),
    new keranjang(),
    new transaksi(),
    new akun(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Palette.bg1,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
        currentIndex: _bottomNavCurrentIndex,
        items: [
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.home,
              color: Palette.bg1,
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
              color: Palette.bg1,
            ),
            icon: new Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.shopping_cart,
              color: Palette.bg1,
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
              color: Palette.bg1,
            ),
            icon: new Icon(
              Icons.swap_calls_sharp,
              color: Colors.grey,
            ),
            label: 'Transaksi',
          ),
          BottomNavigationBarItem(
            activeIcon: new Icon(
              Icons.person,
              color: Palette.bg1,
            ),
            icon: new Icon(
              Icons.person_outline,
              color: Colors.grey,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
