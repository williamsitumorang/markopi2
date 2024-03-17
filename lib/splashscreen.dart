import 'package:flutter/material.dart';
import 'package:markopi_pa3/autentikasi/login.dart';
import 'package:markopi_pa3/beranda.dart';
import 'autentikasi/login.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 4000),
    );

    _animation = TweenSequence([
      TweenSequenceItem(
        tween: Tween(begin: Offset(0, 0), end: Offset(0, -0.05)),
        weight: 1,
      ),
      TweenSequenceItem(
        tween: Tween(begin: Offset(0, -0.05), end: Offset(0, 0.05)),
        weight: 1,
      ),
      TweenSequenceItem(
        tween: Tween(begin: Offset(0, 0.05), end: Offset(0, -0.025)),
        weight: 1,
      ),
      TweenSequenceItem(
        tween: Tween(begin: Offset(0, -0.025), end: Offset(0, 0.025)),
        weight: 1,
      ),
      TweenSequenceItem(
        tween: Tween(begin: Offset(0, 0.025), end: Offset(0, 0)),
        weight: 1,
      ),
    ]).animate(_controller);

    _controller.repeat(reverse: true);

    _controller.forward().then((_) {
      // Navigasi ke halaman beranda setelah animasi selesai
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SlideTransition(
          position: _animation,
          child: Image.asset(
            'assets/images/markopi.png', // Ubah sesuai dengan path gambar Anda
            width: 400, // Sesuaikan ukuran gambar sesuai kebutuhan
            height: 400, // Sesuaikan ukuran gambar sesuai kebutuhan
          ),
        ),
      ),
    );
  }
}
