import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../styles.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff10BCB2),
          systemOverlayStyle:
              const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff10BCB2), Color(0xff5AE7DF)]),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Container(
            alignment: const Alignment(0, -0.77),
            child: Text(
              'Минимальный порог входа - 10’000 KZT',
              style: kIntroductionText,
            ),
          ),
        ),
      ),
    );
  }
}
