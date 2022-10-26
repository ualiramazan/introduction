import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../styles.dart';

class IntroPage4 extends StatelessWidget {
  const IntroPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFF1976D2),
          systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF1976D2), Color(0xFF42A5F5)]),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Container(
            alignment: const Alignment(0, -0.77),
            child: Text(
              'Покупка и продажа физического золота онлайн 24/7',
              style: kIntroductionText,
            ),
          ),
        ),
      ),
    );
  }
}
