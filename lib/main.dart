// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kiosk_launcher/pages/start_page.dart';
import 'package:kiosk_launcher/webpage_launcher.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, deviceType) {
      return const MaterialApp(
        home: StartPage(),
      );
    });
  }
}

class HomePage extends StatelessWidget {
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

  const HomePage({super.key});
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
                          title: 'HHAexchange',
                          url:
                              'https://app.hhaexchange.com/identity/account/login',
                          backgroundImage: sqr1,
                          frontOverlayImage: 'assets/images/sqr1_f.png',
                          isweb: true),
                      CustomTile(
                          title: 'Work bright',
                          url: 'https://app.workbright.com/users/sign_in',
                          backgroundImage: sqr2,
                          frontOverlayImage: sqr2f,
                          isweb: true),
                      CustomTile(
                          title: 'PC Payroll',
                          url: 'https://www.excelforce.com/client-login',
                          backgroundImage: sqr3,
                          frontOverlayImage: sqr3f,
                          isweb: true),
                      CustomTile(
                        title: 'Nevvon',
                        url: 'https://admin.nevvon.com/',
                        backgroundImage: sqr4,
                        frontOverlayImage: sqr4f,
                        isweb: true,
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

class CustomTile extends StatelessWidget {
  final String backgroundImage;
  final String frontOverlayImage;
  final String title;
  final String url;
  final bool isweb;
  var nav;
  CustomTile({
    super.key,
    required this.title,
    required this.url,
    required this.backgroundImage,
    required this.frontOverlayImage,
    required this.isweb,
    this.nav,
  });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          if (isweb == true) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WebPageLaucnher(url: url),
              ),
            );
          } else if (isweb == false) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => nav,
              ),
            );
          }
        },
        child: SizedBox(
          height: 200, // Set the desired height
          width: 200, // Set the desired width
          child: Stack(
            children: [
              if (backgroundImage == 'assets/images/sqr4_b.png')
                Column(
                  children: [
                    SizedBox(
                      height: 8.h,
                    ),
                    Image.asset(
                      backgroundImage,
                      fit: BoxFit.scaleDown,
                    ),
                  ],
                ),
              if (backgroundImage != 'assets/images/sqr4_b.png')
                Image.asset(
                  backgroundImage,
                  fit: BoxFit.scaleDown,
                ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Text(title,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.px)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              if (frontOverlayImage == 'assets/images/sqr1_f.png')
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: SizedBox(
                    width: 3.w,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 19.h,
                        ),
                        Image.asset(
                          frontOverlayImage,
                          fit: BoxFit.scaleDown,
                        ),
                      ],
                    ),
                  ),
                ),
              if (frontOverlayImage == 'assets/images/sqr2_f.png')
                Column(
                  children: [
                    Image.asset(
                      frontOverlayImage,
                      fit: BoxFit.scaleDown,
                    ),
                  ],
                ),
              if (frontOverlayImage == 'assets/images/sqr3_f.png')
                Column(
                  children: [
                    SizedBox(
                      height: 13.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Image.asset(
                        frontOverlayImage,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ],
                ),
              if (frontOverlayImage == 'assets/images/sqr4_f.png')
                Column(
                  children: [
                    SizedBox(
                      height: 1.h,
                    ),
                    Image.asset(
                      frontOverlayImage,
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
