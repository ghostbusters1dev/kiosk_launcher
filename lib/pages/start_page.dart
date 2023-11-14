import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../main.dart';

class StartPage extends StatelessWidget {
  final String sqr1 = 'assets/images/sqr1_b.png';
  final String sqr2 = 'assets/images/sqr2_b.png';
  final String sqr2f = 'assets/images/sqr2_f.png';
  final String sqr3 = 'assets/images/sqr3_b.png';
  final String sqr3f = 'assets/images/sqr3_f.png';
  final String sqr4 = 'assets/images/sqr4_b.png';
  final String sqr4f = 'assets/images/sqr4_f.png';
  final String paApplication = 'https://application.arla.ai/232586563592972';
  final String haApplication = 'https://application.arla.ai/232487048110956';
  final String orientation = 'https://application.arla.ai/232486476527972';
  final String hHAexchange =
      'https://app.hhaexchange.com/identity/account/login';
  final String workbright = 'https://app.workbright.com/users/sign_in';
  final String pcPayroll = 'https://www.excelforce.com/client-login';
  final String navon = 'https://admin.nevvon.com/';

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
                          url:
                              'https://app.hhaexchange.com/identity/account/login',
                          backgroundImage: sqr1,
                          frontOverlayImage: 'assets/images/sqr1_f.png',
                          isweb: false,
                          nav: const HomePage()),
                      CustomTile(
                        title: 'Option 2',
                        url: 'https://app.workbright.com/users/sign_in',
                        backgroundImage: sqr2,
                        frontOverlayImage: sqr2f,
                        isweb: false,
                        nav: const HomePage(),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Center(
                    child: Text(
                      "Pella Care, a licensed and accredited home care agency, has been in service to the New York Metropolitan area community since 2004.\n"
                      "We consistently deliver the finest home care services to clients in New York, Queens, Richmond, Bronx, and Nassau Counties.\n\n"
                      "Pella Care provides a wide range of at-home and health-related services and will customize a care plan to suit your specific needs.",
                      style: TextStyle(color: Colors.white, fontSize: 20.px),
                      textAlign: TextAlign.start,
                    ),
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
