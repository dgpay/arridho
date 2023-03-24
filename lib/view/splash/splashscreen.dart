import 'dart:async';

import 'package:flutter/material.dart';

import '../../routes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashScreen> {
  Timer? _timer;

  _startDelay() {
    _timer = Timer(Duration(seconds: 2), _goNext);
  }

  _goNext() {
    sessionNavigateUser();
  }

  void sessionNavigateUser() async {
    Navigator.pushReplacementNamed(context, Routes.HomeRoute);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: -120,
            left: -100,
            height: 400,
            width: 400,
            child: Container(
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    (const Color(0xffFBBC18)).withOpacity(0.3),
                    (const Color(0xffFFFFFF)).withOpacity(0.1),
                  ],
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: -125,
            height: 400,
            width: 400,
            child: Container(
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                gradient: RadialGradient(colors: [
                  (const Color(0xffFBBC18)).withOpacity(0.2),
                  (const Color(0xffFFFFFF)).withOpacity(0.1),
                ], stops: const [
                  0,
                  1,
                ]),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Center(
            child: Image.asset(
              'assets/images/logo/logo-masjid.png',
              width: 500,
              height: 500,
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.83),
            child: Image.asset(
              'assets/images/logo/logo-BK-horizontal.png',
              height: 27,
              width: 126,
            ),
          ),
          const Align(
            alignment: Alignment(0, 0.86),
            child: Text(
              'Moto Masjid Arridho',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'DaFont',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w300,
                  fontSize: 8.0,
                  color: Color(0xff444444)),
            ),
          ),
        ],
      ),
    );
  }
}
