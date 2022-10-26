import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:introduction_altin/setup/registration/registration_user.dart';

import '../../styles.dart';

class RegistrationPassword extends StatelessWidget {
  const RegistrationPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leadingWidth: 60.w,
        elevation: 0,
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
                      return Registration();
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
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(
            color: Color(0xffA1B4D0),
            height: 1,
          ),
        ),
      ),

      /// BODY

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 40.h,
              child: Center(
                child: Text(
                  'Установите пароль',
                  style: kFont14,
                ),
              ),
            ),
            SizedBox(
              height: 36.h,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Пароль',
                  style: kFont15,
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
              child: TextFormField(
                obscureText: true,
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
            SizedBox(
              height: 32.h,
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Повторите пароль',
                  style: kFont15,
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
              child: TextFormField(
                obscureText: true,
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
            SizedBox(height: 15.h),
            Container(
              color: Colors.yellow,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset('assets/icons/warn.svg', height: 14.h,),
                  SizedBox(width: 20.w),
                  Expanded(child: passwordCriteries)
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
