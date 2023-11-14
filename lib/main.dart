import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kiosk_launcher/webPageLauncher.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, deviceType){
      return MaterialApp(
        home: HomePage(),
      );
    }
    );
  }
}

class HomePage extends StatelessWidget{
  final String sqr1 = 'assets/images/sqr1_b.png';
  final String sqr2 = 'assets/images/sqr2_b.png';
  final String sqr2f = 'assets/images/sqr2_f.png';
  final String sqr3 = 'assets/images/sqr3_b.png';
  final String sqr3f = 'assets/images/sqr3_f.png';
  final String sqr4 = 'assets/images/sqr4_b.png';
  final String sqr4f = 'assets/images/sqr4_f.png';
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: Image.asset('assets/images/img.png',fit: BoxFit.cover,),
              height: double.infinity,
              width: double.infinity,),
          Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Powerd by Maxsip Telecom",style: TextStyle(color: Colors.white),),
                ],
              ),
              SizedBox(height: 10.h,),
              Container(
                width: 100.w,
                height: 20.h,
                color: Colors.white,
                child: Center(
                  child:Image.asset('assets/images/pellacare.png')),
              ),
              SizedBox(height: 5.h,),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomTile(title: 'HHAexchange',url: 'https://app.hhaexchange.com/identity/account/login', backgroundImage: sqr1, frontOverlayImage:  'assets/images/sqr1_f.png',),
                      CustomTile(title: 'Work bright',url: 'https://app.workbright.com/users/sign_in', backgroundImage: sqr2, frontOverlayImage: sqr2f,),
                      CustomTile(title: 'PC Payroll',url: 'https://www.excelforce.com/client-login', backgroundImage: sqr3, frontOverlayImage: sqr3f,),
                      CustomTile(title: 'Nevvon',url: 'https://admin.nevvon.com/', backgroundImage: sqr4, frontOverlayImage: sqr4f,)
                    ],
                  ),
                  SizedBox(height: 2.h,),
                  Center(
                    child: Text(
                      "Pella Care, a licensed and accredited home care agency, has been in service to the New York Metropolitan area community since 2004.\n"
                          "We consistently deliver the finest home care services to clients in New York, Queens, Richmond, Bronx, and Nassau Counties.\n\n"
                          "Pella Care provides a wide range of at-home and health-related services and will customize a care plan to suit your specific needs.",
                      style: TextStyle(color: Colors.white,fontSize:20.px ),
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
  @override
  final String backgroundImage;
  final String frontOverlayImage;
  final String title;
  final String url;
  CustomTile({required this.title,required this.url,required this.backgroundImage, required this.frontOverlayImage});
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => WebPageLaucnher(url: url),));
    },
        child: Container(
          height:200, // Set the desired height
          width: 200, // Set the desired width
          child: Stack(
            children: [
              if(backgroundImage == 'assets/images/sqr4_b.png')
              Column(
                children: [
                  SizedBox(height: 8.h,),
                  Image.asset(
             backgroundImage,
                    fit: BoxFit.scaleDown,
                  ),
                ],
              ),
              if(backgroundImage != 'assets/images/sqr4_b.png')
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
                            borderRadius: BorderRadius.circular(30)
                          ),
                            child: Center(
                              child: Text(title, style: TextStyle(color: Colors.white,fontSize: 20.px)),

                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              if(frontOverlayImage == 'assets/images/sqr1_f.png')
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  width: 3.w,
                  child: Column(
                    children: [
                      SizedBox(height: 19.h,),
                      Image.asset(
                       frontOverlayImage,
                        fit: BoxFit.scaleDown,
                      ),
                    ],
                  ),
                ),
              ),
              if(frontOverlayImage == 'assets/images/sqr2_f.png')
                Container(
                  child: Column(
                    children: [
                      Image.asset(
                        frontOverlayImage,
                        fit: BoxFit.scaleDown,
                      ),
                    ],
                  ),
                ),
              if(frontOverlayImage == 'assets/images/sqr3_f.png')
              Container(
                child: Column(
                  children: [
                    SizedBox(height: 13.h,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Image.asset(
                        frontOverlayImage,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ],
                ),
              ),
              if(frontOverlayImage == 'assets/images/sqr4_f.png')
                Container(
                  child: Column(
                    children: [
                      SizedBox(height: 1.h,),
                      Image.asset(
                        frontOverlayImage,
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

