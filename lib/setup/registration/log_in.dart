import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

// Pages
import '../../home_page.dart';
import '../../styles.dart';
import 'package:introduction_altin/setup/registration/registration_user.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isHiddenPassword = true;
  bool selected = false; // TextFormField

  void _togglePasswordView() {
    if (isHiddenPassword == true) {
      isHiddenPassword = false;
    } else {
      isHiddenPassword = true;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 60.h),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     GestureDetector(
            //       onTap: null,
            //       child: SvgPicture.asset(
            //         'assets/icons/back_arrow.svg',
            //         height: 16.h,
            //       ),
            //     ),
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         SvgPicture.asset(
            //           'assets/icons/global_languages.svg',
            //           height: 22.h,
            //         ),
            //         const SizedBox(
            //           width: 10,
            //         ),
            //       ],
            //     )
            //   ],
            // ),

            /// Logo
            SvgPicture.asset(
              'assets/icons/logo_main.svg',
              height: 90.h,
            ),
            SizedBox(height: 40.h),

            /// Authentication
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: SizedBox(
                height: 230.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 60.h,
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(bottom: 10.h, top: 20.h),
                            labelText: 'Логин',
                            labelStyle: kFontAuthentication16),
                      ),
                    ),
                    SizedBox(height: 40.h),
                    SizedBox(
                      height: 60.h,
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding:
                            EdgeInsets.only(bottom: 10.h, top: 20.h),
                            labelText: 'Пароль',
                            labelStyle: kFontAuthentication16),
                      ),
                    ),
                    SizedBox(height: 15.h),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Text('Забыли пароль?', style: kButton),
                      ),
                    )
                  ],
                ),
              ),
            ),

            /// Button

            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HomePage()));
                  },
                  child: Container(
                    height: 50.h,
                    width: 335.w,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xff818181).withOpacity(0.4),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: const Offset(
                                0, 2), // changes position of shadow
                          ),
                        ],
                        color: const Color(0xff448BF5),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25))),
                    child: Center(
                      child: Text('Войти', style: kButton),
                    ),
                  ),
                ),
              ),
            ),
            KeyboardVisibilityBuilder(
              builder: (context, isKeyboardVisible) {
                if (!isKeyboardVisible) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Registration()));
                    },
                    child: SizedBox(
                      height: 95.h,
                      child: Container(
                        alignment: const Alignment(0, -0.3),
                        child: Text(
                          'Уже зарегестрированы?',
                          style: kFontRegistration16,
                        ),
                      ),
                    ),
                  );
                }
                return SizedBox(height: 25.h);
              },
            ),
          ],
        ),
      ),
    );
  }
}
