import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final kIntroductionText = TextStyle(
    color: Colors.white,
    fontFamily: 'Nunito',
    fontSize: 24.sp,
    fontWeight: FontWeight.w700);

final kButton = TextStyle(
    color: Colors.white,
    fontSize: 14.sp,
    fontFamily: 'Nunito',
    fontWeight: FontWeight.w700);

final kFont20 = TextStyle(
    color: const Color(0xff343434),
    fontFamily: 'Nunito',
    fontWeight: FontWeight.w600,
    fontSize: 20.sp);

final kFont14 = TextStyle(
    color: const Color(0xff65849D),
    fontFamily: 'Nunito',
    fontSize: 14.sp,
    fontWeight: FontWeight.w600);

final kFont15 = TextStyle(
    color: const Color(0xff65849D),
    fontFamily: 'Nunito',
    fontSize: 15.sp,
    fontWeight: FontWeight.w400);

final kFontHint15 = TextStyle(
    color: const Color(0xffE3E8EF),
    fontFamily: 'Nunito',
    fontSize: 15.sp,
    fontWeight: FontWeight.w400);

final kReadMore = TextStyle(
    color: const Color(0xff448BF5),
    fontFamily: 'Nunito',
    fontSize: 14.sp,
    fontWeight: FontWeight.w400);

final kFontRegistration16 = TextStyle(
    color: const Color(0xff0C4471),
    fontFamily: 'Nunito',
    fontSize: 16.sp,
    fontWeight: FontWeight.w400);

final kFontAuthentication16 = TextStyle(
    color: const Color(0xff65849D),
    fontFamily: 'Nunito',
    fontSize: 16.sp,
    fontWeight: FontWeight.w400);

final textAgreement = Text(
  "Я прочитал и согласен с Условиями"
  " использования, и я понимаю,"
  " что мои данные будут обрабатываться"
  " в соответствии с Заявлением о "
  "конфиденциальности ALTIN.",
  style: TextStyle(
      fontFamily: 'Nunito',
      fontWeight: FontWeight.w600,
      fontSize: 15.sp,
      color: const Color(0xff343434)),
);

final textAgreement2 = RichText(
    text: TextSpan(children: [
  TextSpan(text: 'Пожалуйста, ознакомьтесь с ', style: kAgreementGrey),
  TextSpan(text: 'Политикой конфиденциальности', style: kAgreementBlue),
  TextSpan(
      text: ', чтобы узнать об обработке персональных данных в ALTIN.',
      style: kAgreementGrey)
]));

final passwordCriteries = Text(
  "Пароль должен содержать не менее 8 символов и включать как минимум одну цифру, одну прописную и одну строчную букву!",
  style: TextStyle(
      fontFamily: 'Nunito',
      fontWeight: FontWeight.w300,
      fontSize: 11.sp,
      color: const Color(0xffA1B4D0)),
);

final kAgreementGrey = TextStyle(
    fontSize: 13.sp,
    fontFamily: 'Nunito',
    fontWeight: FontWeight.w400,
    color: const Color(0xff65849D));

final kAgreementBlue = TextStyle(
    fontSize: 11.sp,
    fontFamily: 'Nunito',
    fontWeight: FontWeight.w400,
    color: const Color(0xff448BF5));

final kTextField = TextStyle(
    fontSize: 15.sp,
    fontFamily: 'Nunito',
    fontWeight: FontWeight.w400,
    color: const Color(0xff343434));

class MyFlutterApp {
  MyFlutterApp._();

  static const _kFontFam = 'MyFlutterApp';
  static const String? _kFontPkg = null;

  static const IconData backArrow =
      IconData(0xe800, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}
