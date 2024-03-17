import 'package:flutter/material.dart';

class PermintaanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Permintaan'),
      ),
      body: Center(
        child: Text(
          'Halaman Permintaan',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
