import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_altin/styles.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xffFE8D24),
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xffFE8D24), Color(0xffFFC85B)]),
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
