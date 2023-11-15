import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../utils/strings.dart';
import 'employee_page.dart';

class Option2 extends StatelessWidget{
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
                        title: 'Application',
                        url: Strings.paApplication,
                        backgroundImage: Strings.sqr2,
                        frontOverlayImage: Strings.sqr2f,
                        isweb: true,
                        nav: const HomePage(),
                      ),
                      CustomTile(
                          title: 'Orientation',
                          url: Strings.orientation,
                          backgroundImage: Strings.sqr3,
                          frontOverlayImage: Strings.sqr3f,
                          isweb: true),
                    ],
                  ),
                  SizedBox(height: 20.h,),
                  Row(
                      children: [
                        IconButton(onPressed: (){
                          Navigator.of(context).pop();
                        }, icon: Icon(Icons.arrow_back,color: Colors.white,size: 50,))])
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}