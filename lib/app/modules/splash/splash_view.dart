import 'dart:async';

import 'package:flutter/material.dart';

import '../../themes/colors.dart';
import '../../themes/fonts.dart';
import '../get_started/get_started_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, GetStartedView.route);
    });
  }

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    final maxHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primaryColor,
      body: SizedBox(
        width: maxWidth,
        height: maxHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/airplane.png',
              width: maxWidth / 3.4,
            ),
            SizedBox(
              height: maxHeight / 15,
            ),
            Text(
              'AIRPLANE',
              style: poppinsMedium.copyWith(
                fontSize: 32,
                letterSpacing: 12,
                color: whiteColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
