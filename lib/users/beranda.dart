import 'package:flutter/material.dart';
import 'package:sebuah_halaman/constans.dart';
import 'package:sebuah_halaman/users/depan.dart';
import 'package:sebuah_halaman/users/katagori.dart';

class beranda extends StatefulWidget {
  @override
  State<beranda> createState() => _berandaState();
}

class _berandaState extends State<beranda> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late int _activeTabIndex;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _tabController.addListener(_setActiveTabIndex);
  }

  void _setActiveTabIndex() {
    _activeTabIndex = _tabController.index;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onTap: () {},
          readOnly: true,
          style: TextStyle(fontSize: 15),
          decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search, color: Palette.orange),
              contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: new BorderSide(color: Colors.white),
              ),
              fillColor: Color(0xfff3f3f4),
              filled: true),
        ),
        backgroundColor: Palette.bg1,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Palette.orange,
          labelColor: Palette.orange,
          unselectedLabelColor: Colors.grey,
          labelPadding: EdgeInsets.all(0),
          tabs: [
            Tab(text: 'Beranda'),
            Tab(text: 'Katagori'),
          ],
        ),
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          depan(),
          katagori(),
        ],
      ),
    );
  }
}
