import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';
import '../../helpers/colors.dart';
import '../../helpers/size_calculator.dart';
// import 'package:intl/intl_browser.dart';

// import 'package:responsive_widgets/responsive_widgets.dart';
// import 'non_responsive_screen.dart';
// import 'responsive_screen.dart';

class ShareStreak extends StatefulWidget {
  const ShareStreak({Key? key}) : super(key: key);

  @override
  State<ShareStreak> createState() => _ShareStreakState();
}

class _ShareStreakState extends State<ShareStreak> {
  
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double Hscale = (height / 889);
    double Wscale = (width / 640);
    // final date = DateFormat; 'EEE, MMM d, ''yy'
    // final date = new DateFormat('EEEE, MMMM d, ' 'yyyy').format(DateTime.now());
    final date = Jiffy(DateTime.now()).format("EEEE do MMMM , yyyy");
  //  final date = Jiffy([DateTime.now(),"EEEE MMMM do, yyyy" ]);
  
    // final currentDate = DateTime.now();
    // final date = Jiffy(DateTime(currentDate.year, currentDate.month, currentDate.day)).format("EEEE MMMM do, yyyy");
    // final date = Jiffy("EEEE MMMM do, yyyy").format(DateTime.now());

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          width: sizer(true, 640, context),
          height: MediaQuery.of(context).size.height,
          // color: AppColors.accentPurple5,
          decoration: const BoxDecoration(
              // color: Colors.deepPurpleAccent,
              image: DecorationImage(
                  image: AssetImage('assets/images/Sharestreaks.png'),
                  //  colorFilter:  ColorFilter.mode(Color.fromARGB(180, 66, 40, 238), BlendMode.color),
                  fit: BoxFit.fill)),
          child: SingleChildScrollView(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: sizer(false, 0, context)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: Hscale * 40,
                  ),
                  Center(
                      child: Image.asset(
                    'assets/images/mEd-Lg.png',
                    // width: sizer(true, 103, context),
                    width: Wscale * 103,
                    height: Hscale * 43,
                    fit: BoxFit.fitWidth,
                  )),
                  SizedBox(
                    height: Hscale * 25,
                  ),
                  Center(
                    child: Text(
                      "⏱🔥Study Streak Update",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: width * 0.05,
                        color: AppColors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Hscale * 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                        width: width,
                        // height: Hscale * 340,

                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(
                              sizer(true, 12, context)),
                        ),
                        child: Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: sizer(true, 10.5, context),
                                  vertical: Hscale * 25,
                                ),
                                child: Column(children: [
                                  RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text:
                                              'As of ${date} ,',
                                          // textAlign: TextAlign.center,
                                          style: TextStyle(
                                            height: 18 / 11.5,
                                            fontSize: width*0.04,
                                            color: AppColors.text1,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Inter',
                                          )),
                                      TextSpan(
                                          text: " @mayowasamueladegoke",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.text1,
                                              fontFamily: 'Inter',
                                              height: 18 / 11.5,
                                              fontSize: width * 0.042)),
                                      TextSpan(
                                          text:
                                              ' is in the top 99.0000000011% of the tons of learners in the mEd education app, up from Top 99.0000000019% yesterday.',
                                          style: TextStyle(
                                              height: 18 / 11.5,
                                              fontSize: width * 0.04,
                                              color: AppColors.text1,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Inter')),
                                    ]),
                                  ),
                                  const Text(""),
                                  RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: 'So far,',
                                          // textAlign: TextAlign.center,
                                          style: TextStyle(
                                            height: 18 / 11.5,
                                            fontSize: width * 0.04,
                                            color: AppColors.text1,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Inter',
                                          )),
                                      TextSpan(
                                          text: " @mayowasamueladegoke",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.text1,
                                              fontFamily: 'Inter',
                                              height: 18 / 11.5,
                                              fontSize: width * 0.042)),
                                      TextSpan(
                                          text:
                                              ' has climbed the rank of learners every day for 3 consecutive days straight!!',
                                          style: TextStyle(
                                              height: 18 / 11.5,
                                              fontSize: width * 0.04,
                                              color: AppColors.text1,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Inter')),
                                    ]),
                                  ),
                                ]))
                            //  padding should end here
                          ],
                        ),
                      ),
                      Positioned(
                          top: 62.8,
                          left: -8,
                          child: Container(
                            width: Wscale * 115,
                            height: Wscale * 115,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                
                                    image: AssetImage(
                                        'assets/images/boy.png'), fit: BoxFit.fill)),
                          )
                          // child: Image.asset(
                          //   'assets/images/boy.png',
                          //   width: 115.0,
                          //   height: 115.0,
                          // )
                          ),
                      Positioned(
                          // width: 27,
                          // height: 245,
                          right: 4,
                          bottom: 87,
                          child: Image.asset(
                            'assets/images/girl.png',
                            width: Wscale * 76,
                            height: Hscale *76,
                          )),
                      Positioned(
                          top: 54,
                          right: 5,
                          child: Image.asset(
                            'assets/images/curve.png',
                            width: sizer(true, 48.2, context),
                            height: sizer(true, 27, context),
                          )),
                      Positioned(
                          left: 5,
                          bottom: -5,
                          child: Image.asset(
                            'assets/images/Rectangle.png',
                            width: sizer(true, 45.2, context),
                            height: sizer(true, 45.2, context),
                          ))
                    ]),
                  ),

                  SizedBox(
                    height: Hscale * 30,
                  ),
                  //Text('@mayowasamueladegoke’s most studied note yesterday 👇🏼', style: TextStyle(fontSize: ),)

                  Center(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: Wscale * 60),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                              text: '@mayowasamueladegoke',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.white,
                                  fontFamily: 'Inter',
                                  height: 1.4,
                                  fontSize: width * 0.04)),
                          TextSpan(
                              text: "'s",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.white,
                                  fontFamily: 'Inter',
                                  height: 1.4,
                                  fontSize: width * 0.04)),
                          TextSpan(
                              text: ' most studied note yesterday',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.white,
                                  fontFamily: 'Inter',
                                  fontSize: width * 0.04,
                                  height: 1.4)),
                        ]),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: Hscale * 15,
                  ),

                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: Wscale * 45),
                    child: Center(
                      child: Container(
                        // width: Wscale * 519,
                        height: Hscale * 201,
                        padding: EdgeInsets.symmetric(
                          horizontal: Wscale * 21.25,
                          vertical: Hscale * 29.65,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(27),
                        ),
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1.6,
                                color: AppColors.lightGrey,
                                style: BorderStyle.solid),
                            borderRadius:
                                BorderRadius.circular(sizer(true, 12, context)),
                          ),
                          color: Colors.white,
                          child: Padding(
                              padding: const EdgeInsets.fromLTRB(15.7, 18, 20.13, 8),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                
                                children: [
                                  Image.asset(
                                    'assets/images/bit.png',
                                    // scale: 1,
                                    // width: 60.73,
                                    // height: 60.73,
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                      child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                      //  mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: 'Note',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColors.greenColor,
                                                  fontFamily: 'Inter',
                                                  height: 1.4,
                                                  fontSize: width* 0.04)),
                                          TextSpan(
                                              text:
                                                  ' • Parts of a Focus Res --- earch Thesis',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColors.text1,
                                                  fontFamily: 'Inter',
                                                  fontSize: width*0.04,
                                                  height: 1.4)),
                                        ]),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                        Expanded(
                                        child: Text(
                                          '4 mins read • ⏱🔥 230k study streak',
                                          style: TextStyle(
                                            fontSize: width*0.031,
                                            color: AppColors.text3,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                                  const SizedBox(width: 6),
                                  SvgPicture.asset(
                                    "assets/images/Shape.svg",
                                    width: Wscale * 28.14,
                                    height: Hscale * 28.03,
                                  )
                                ],
                              )),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: Hscale * 40)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
