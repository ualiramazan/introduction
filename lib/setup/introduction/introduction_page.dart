import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Pages
import 'package:introduction_altin/setup/introduction/introduction_screens/intro_1.dart';
import 'package:introduction_altin/setup/introduction/introduction_screens/intro_2.dart';
import 'package:introduction_altin/setup/introduction/introduction_screens/intro_3.dart';
import 'package:introduction_altin/setup/introduction/introduction_screens/intro_4.dart';
import 'package:introduction_altin/setup/introduction/introduction_screens/intro_5.dart';
import 'package:introduction_altin/setup/registration/registration_user.dart';
import 'package:introduction_altin/styles.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  final int _numPages = 5;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  bool _onLastPage = false;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i <= _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 4.w),
      height: 2.h,
      width: isActive ? 60.w : 60.0.w,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.transparent.withOpacity(0.35),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            physics: const ClampingScrollPhysics(),
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
                _onLastPage = (page == 4);
              });
            },
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
              IntroPage4(),
              IntroPage5(),
            ],
          ),
          Container(
            alignment: const Alignment(0, -0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _buildPageIndicator(),
            ),
          ),
          _onLastPage
              ? GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Registration();
                    }));
                  },
                  child: Container(
                    alignment: const Alignment(0, 0.75),
                    child: Container(
                      width: 335.w,
                      height: 50.h,
                      decoration: const BoxDecoration(
                          color: Color(0xff0C4471),
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: Center(
                        child: Text(
                          'НАЧАТЬ',
                          style: kButton,
                        ),
                      ),
                    ),
                  ),
                )
              : GestureDetector(
                  onTap: () {
                    _pageController.nextPage(
                        duration: const Duration(milliseconds: 600),
                        curve: Curves.easeIn);
                  },
                  child: Container(
                    alignment: const Alignment(0, 0.75),
                    child: Container(
                      width: 335.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xff818181).withOpacity(0.4),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: const Offset(0, 2),
                            ),
                          ],
                          color: const Color(0xff0C4471),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25))),
                      child: Center(
                        child: Text(
                          'ДАЛЕЕ',
                          style: kButton,
                        ),
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
