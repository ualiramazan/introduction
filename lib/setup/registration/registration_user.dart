import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/services.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

// Pages
import 'package:introduction_altin/setup/introduction/introduction_page.dart';
import 'package:introduction_altin/setup/registration/log_in.dart';
import 'package:introduction_altin/setup/registration/registration_password.dart';
import 'package:introduction_altin/styles.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  ///// CheckBox

  bool value = false;

  Widget _isPressedCheckbox() {
    return InkWell(
      onTap: () {
        setState(() {
          value = !value;
        });
      },
      child: Container(
        decoration: const BoxDecoration(shape: BoxShape.rectangle),
        child: value
            ? Image.asset('assets/icons/rectangleGreen.png', height: 25.h)
            : Image.asset(
                'assets/icons/rectangle.png',
                height: 25.h,
              ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leadingWidth: 60.w,
        elevation: 1,
        centerTitle: true,
        title: Text(
          'Регистрация пользователя',
          style: kFont20,
        ),
        leading: SizedBox(
          width: 20.w,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const IntroductionPage();
                    }));
                  },
                  child: SvgPicture.asset(
                    'assets/icons/backArrow.svg',
                    width: 20.w,
                    height: 16.h,
                    color: const Color(0xff576375),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      ///// BODY

      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 40.h,
              child: Center(
                child: Text(
                  'Введите информацию',
                  style: kFont14,
                ),
              ),
            ),

            ///// IIN

            SizedBox(
              height: 34.h,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'ИИН',
                  style: kFont15,
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
              child: TextFormField(
                keyboardType: TextInputType.phone,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(12),
                ],
                autocorrect: false,
                decoration: InputDecoration(
                  labelStyle: kTextField,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Color(0xff0092FF)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Color(0xffE3E8EF),
                    ),
                  ),
                ),
              ),
            ),

            ///// Phone number

            SizedBox(
              height: 32.h,
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Номер телефона',
                  style: kFont15,
                ),
              ),
            ),
            SizedBox(height: 8.h),
            SizedBox(
              height: 50.h,
              child: TextFormField(
                inputFormatters: [
                  LengthLimitingTextInputFormatter(12),
                ],
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelStyle: kTextField,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Color(0xff0092FF)),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide:
                            const BorderSide(color: Color(0xffE3E8EF)))),
              ),
            ),

            ///// Input where you live

            SizedBox(
              height: 36.h,
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Адрес',
                  style: kFont15,
                ),
              ),
            ),
            SizedBox(height: 8.h),
            SizedBox(
              height: 50.h,
              child: TextFormField(
                autofocus: false,
                decoration: InputDecoration(
                  labelStyle: kTextField,
                  hintText: 'город, микрорайон/улица, дом, квартира',
                  hintStyle: kFontHint15,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Color(0xff0092FF)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(
                      color: Color(0xffE3E8EF),
                    ),
                  ),
                ),
              ),
            ),

            ///// AGREEMENT FORM

            KeyboardVisibilityBuilder(
              builder: (context, isKeyboardVisible) {
                if (!isKeyboardVisible) {
                  return SizedBox(
                    height: 220.h,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        children: [
                          SizedBox(height: 40.h),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _isPressedCheckbox(),
                              SizedBox(width: 20.w),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    textAgreement,
                                    SizedBox(height: 5.h),
                                    Text(
                                      'Читать далее',
                                      style: kReadMore,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Expanded(child: textAgreement2)
                        ],
                      ),
                    ),
                  );
                }
                return const SizedBox();
              },
            ),

            ///// Blue BUTTON

            Expanded(
              child: Container(
                alignment: const Alignment(0, 0.3),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 335.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xff818181).withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: const Offset(0, 2), // changes position of shadow
                          ),
                        ],
                        color: value
                            ? const Color(0xff448BF5)
                            : const Color(0xffA6CAFF),
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
            ),

            ///// Already REGISTERED?

            KeyboardVisibilityBuilder(
              builder: (context, isKeyboardVisible) {
                if (!isKeyboardVisible) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                    },
                    child: SizedBox(
                      height: 80.h,
                      child: Container(
                        alignment: const Alignment(0, -0.7),
                        child: Text(
                          'Уже зарегестрированы?',
                          style: kFontRegistration16,
                        ),
                      ),
                    ),
                  );
                }
                return SizedBox(height: 5.h);
              },
            ),
          ],
        ),
      ),
    );
  }
}
