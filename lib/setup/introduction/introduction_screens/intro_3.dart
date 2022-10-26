import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../styles.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff448BF5),
          systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff448BF5), Color(0xff78BEFF)]),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Container(
            alignment: const Alignment(0, -0.77),
            child: Text(
              'Отсутствие ростовщических процентов ',
              style: kIntroductionText,
            ),
          ),
        ),
      ),
    );
  }
}
