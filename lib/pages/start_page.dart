import 'package:flutter/material.dart';
import 'package:kiosk_launcher/pages/option1.dart';
import 'package:kiosk_launcher/pages/option2.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../main.dart';
import '../utils/strings.dart';
import 'employee_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/images/img.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Powerd by Maxsip Telecom",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 100.w,
                height: 20.h,
                color: Colors.white,
                child:
                    Center(child: Image.asset('assets/images/pellacare.png')),
              ),
              SizedBox(
                height: 5.h,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomTile(
                          title: 'Option 1',
                          url:'',
                          backgroundImage: Strings.sqr1,
                          frontOverlayImage: 'assets/images/sqr1_f.png',
                          isweb: false,
                          nav:  Option1()),
                      CustomTile(
                        title: 'Option 2',
                        url: 'https://app.workbright.com/users/sign_in',
                        backgroundImage: Strings.sqr2,

                        frontOverlayImage: Strings.sqr2f,
                        isweb: false,
                        nav:  Option2(),
                      )
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
