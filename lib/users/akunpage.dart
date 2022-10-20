import 'package:flutter/material.dart';

class akun extends StatefulWidget {
  @override
  State<akun> createState() => _akunState();
}

class _akunState extends State<akun> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Text(
          'AkunPage',
        ),
      ),
    );
  }
}
