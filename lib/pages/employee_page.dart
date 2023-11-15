import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../utils/strings.dart';
import '../webpage_launcher.dart';

class HomePage extends StatelessWidget {

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
                          backgroundImage: Strings.sqr1,
                          frontOverlayImage: 'assets/images/sqr1_f.png',
                          isweb: true),
                      CustomTile(
                          title: 'Work bright',
                          url: Strings.workbright,
                          backgroundImage: Strings.sqr2,
                          frontOverlayImage: Strings.sqr2f,
                          isweb: true),
                      CustomTile(
                          title: 'PC Payroll',
                          url: Strings.pcPayroll,
                          backgroundImage: Strings.sqr3,
                          frontOverlayImage: Strings.sqr3f,
                          isweb: true),
                      CustomTile(
                        title: 'Nevvon',
                        url: Strings.navon,
                        backgroundImage: Strings.sqr4,
                        frontOverlayImage: Strings.sqr4f,
                        isweb: true,
                      )
                    ],
                  ),
                  // SizedBox(
                  //   height: 2.h,
                  // ),
                  // Center(
                  //   child: Text(
                  //     "Pella Care, a licensed and accredited home care agency, has been in service to the New York Metropolitan area community since 2004.\n"
                  //         "We consistently deliver the finest home care services to clients in New York, Queens, Richmond, Bronx, and Nassau Counties.\n\n"
                  //         "Pella Care provides a wide range of at-home and health-related services and will customize a care plan to suit your specific needs.",
                  //     style: TextStyle(color: Colors.white, fontSize: 20.px),
                  //     textAlign: TextAlign.start,
                  //   ),
                //  ),
                  SizedBox(height: 20.h,),
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        Navigator.of(context).pop();
                      }, icon: Icon(Icons.arrow_back,color: Colors.white,size: 50,)),
                    ],
                  )
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
                                    color: Colors.white, fontSize: 15.px)),
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