import 'package:flutter/material.dart';

class keranjang extends StatefulWidget {
  @override
  State<keranjang> createState() => _keranjangState();
}

class _keranjangState extends State<keranjang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Keranjang'),
      ),
      body: Center(
        child: Text(
          'KeranjangPage',
        ),
      ),
    );
  }
}
