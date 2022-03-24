import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:simple_rich_text/simple_rich_text.dart';
import 'package:login_page/helpers/colors.dart';
import 'package:login_page/helpers/size_calculator.dart';
// import 'package:flutter/foundation.dart' show TargetPlatform;

import 'package:markdown_editable_textinput/format_markdown.dart';
import 'package:markdown_editable_textinput/markdown_text_input.dart';

class Files extends StatefulWidget {
  const Files({Key? key}) : super(key: key);

  @override
  State<Files> createState() => _FilesState();
}
// QuillController _controller = QuillController.basic();

class _FilesState extends State<Files> {
  String description = 'My great package';
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      print(controller.text);
    });
  }

  Future<String?> openDialog() => showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
            title: Text('Jotter'),
            // width: 331,
            // width: sizer(true, 331, context),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            content: TextField(
              autofocus: true,
              decoration: InputDecoration(
                hintText: 'Enter jotter text',
              ),
            ),

            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(controller.text);
                  },
                  child: Text('Done'))
            ],
          ));

  // void submit(){
  //     Navigator.of(context).pop(controller.text);
  // }

  @override
  Widget build(BuildContext context) {
    // var platform = Theme.of(context).platform;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 70,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.grey[50],
          // backgroundColor: Colors.amber ,
          // toolbarHeight: 90.0,
          title: Text(
            'Welcome to Note',
            style: TextStyle(
                color: Colors.black,
                fontSize: sizer(true, 14, context),
                fontFamily: 'Inter',
                fontWeight: FontWeight.w800),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/images/noteIcon.svg')),
            SizedBox(width: 20.0),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 13, 13, 13),
              child: RaisedButton.icon(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                elevation: 0,
                color: AppColors.greenColor,
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/images/whiteShareIcon.svg',
                  width: sizer(true, 14, context),
                ),
                label: Text(
                  'Share 🤗',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: sizer(true, 13, context),
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ],
        ),

// BODY SHOULD PLACED HERE
        body: SingleChildScrollView(
            child: Column(
          children: [
            // START my own content

            Column(children: [
              Padding(
                  padding: EdgeInsets.fromLTRB(16, 0, 12.8, 0),
                  child: Column(children: [
                    // card
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 1,
                            color: AppColors.lightGrey,
                            style: BorderStyle.solid),
                        borderRadius:
                            BorderRadius.circular(sizer(true, 12, context)),
                      ),
                      color: Colors.white,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 18, 16.5, 18),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/bit.png'),
                              SizedBox(width: 8),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                              fontSize: 14.4)),
                                      TextSpan(
                                          text:
                                              ' • Introduction to the Startup Eco-tec system',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.text1,
                                              fontFamily: 'Inter',
                                              fontSize: 14.4,
                                              height: 1.4)),
                                    ]),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '⏱🔥 230k study streak',
                                    style: TextStyle(
                                      fontSize: sizer(true, 11.5, context),
                                      color: AppColors.text3,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              )),
                              SizedBox(width: 6),
                              SvgPicture.asset(
                                "assets/images/Shape.svg",
                                width: sizer(true, 18, context),
                              )
                            ],
                          )),
                    ),

                    SizedBox(
                      height: 12,
                    ),

                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text:
                              'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF252525),
                              height: 1.4,
                              fontSize: 14,
                              letterSpacing: 0.1,
                              fontFamily: 'Inter')),
                      TextSpan(
                          text: ' Exercitation veniam consequat ',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF252525),
                              height: 1.4,
                              fontSize: 14,
                              letterSpacing: 0.1)),
                      TextSpan(
                          text: 'sunt nostrud amet.',
                          style: TextStyle(
                              color: Color(0xFF252525),
                              fontWeight: FontWeight.w400,
                              height: 1.4,
                              fontSize: 14,
                              letterSpacing: 0.1))
                    ])),
                    SizedBox(
                      height: 12,
                    ),

                    RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: 'Amet minim mollit',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF252525),
                              height: 1.4,
                              fontSize: 14,
                              letterSpacing: 0.1)),
                      TextSpan(
                          text:
                              ' non deserunt ullamco est sit aliqua dolor do amet sint.',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF252525),
                              height: 1.4,
                              fontSize: 14,
                              letterSpacing: 0.1)),
                      TextSpan(
                          text: ' Velit officia consequat',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.italic,
                              color: Color(0xFF252525),
                              height: 1.4,
                              fontSize: 14,
                              letterSpacing: 0.1)),
                      TextSpan(
                          text:
                              ' duis enim velit mollit. Exercitation veniam consequat  sunt nostrud amet.',
                          style: TextStyle(
                              color: Color(0xFF252525),
                              fontWeight: FontWeight.w400,
                              height: 1.4,
                              fontSize: 14,
                              letterSpacing: 0.1))
                    ])),

                    SizedBox(
                      height: 12,
                    ),

                    Container(
                      height: 185.43,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/wallett-1.png'),
                              fit: BoxFit.fill)),
                      //  child: SvgPicture('assets/images/wallett.svg')
                    ),

                    SizedBox(
                      height: 24.57,
                    ),

                    SelectableText(
                      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
                      toolbarOptions:
                          ToolbarOptions(copy: true, selectAll: true),
                      // showCursor: true,
                      style: TextStyle(
                          height: 1.4,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF252525)),
                    ),

                    SizedBox(
                      height: 24,
                    ),

                    Container(
                        width: double.infinity,
                        // color: Colors.amberAccent,
                        child: Text(
                          'Footnotes',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w700,
                              color: AppColors.blackColor,
                              fontSize: 14,
                              height: 1.4),
                        )),

                    SizedBox(
                      height: 15,
                    ),

                    Container(
                      // height: 40,
                      width: double.infinity,
                      child: RaisedButton.icon(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          padding: EdgeInsets.symmetric(vertical: 15),
                          elevation: 0,
                          color: AppColors.secondaryPurpleColor,
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/images/thumb.svg'),
                          label: Text('Attempt Questions',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontFamily: 'Inter',
                                  fontSize: 15))),
                    ),

                    SizedBox(
                      height: 80,
                    ),
                  ])),

              // Stack(
              //   children: [
              //        Positioned(
              //          child:  Container(
              //     height: 44,
              //     color: AppColors.greyBgColor,
              //     width: double.infinity,
              //     child: TextButton.icon(
              //       onPressed: () {},
              //       icon: SvgPicture.asset('assets/images/circleClose.svg'),
              //       label: Text(
              //         'Close this material',
              //         style: TextStyle(color: Colors.white),
              //       ),
              //     ),
              //   ),
              // )
              //   ],
              // ),
            ])

            //  eND OF CORRECT BODY FOR MED
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              left: 8,
              bottom: sizer(true, 5, context),
              height: sizer(true, 40, context),
              width: sizer(true, 100, context),
              child: FloatingActionButton(
                elevation: 0,
                backgroundColor: Colors.white,
                heroTag: 'back',
                onPressed: () {/* Do something */},
                child: Text(
                  'Last note',
                  style: TextStyle(
                      color: AppColors.greenColor,
                      fontWeight: FontWeight.w800,
                      fontSize: sizer(
                        true,
                        12.5,
                        context,
                      ),
                      letterSpacing: 0,
                      fontFamily: 'Inter'),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(
                      width: 1,
                      color: AppColors.greenColor,
                    )),
              ),
            ),
            Positioned(
              bottom: sizer(true, 5, context),
              right: 8,
              width: sizer(true, 100, context),
              height: sizer(true, 40, context),
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                heroTag: 'next',
                elevation: 0,
                foregroundColor: Colors.green,
                // shape: Border.all(width: 2, color: Colors.green),
                onPressed: () {/* Do something */},
                child: Text(
                  'Next note',
                  style: TextStyle(
                      color: AppColors.greenColor,
                      fontWeight: FontWeight.w800,
                      fontSize: sizer(
                        true,
                        12.5,
                        context,
                      ),
                      letterSpacing: 0,
                      fontFamily: 'Inter'),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: AppColors.greenColor, width: 1)),
                // Border.all(width: 2, color: Colors.green,
                //  style:
                //  ),
              ),
            ),
            // Add more floating buttons if you want
            // There is no limit
          ],
        ),
        bottomNavigationBar: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
           children: [ Container(
              height: 44,
              color: AppColors.greyBgColor,
              width: double.infinity,
              child: TextButton.icon(
                onPressed: () {},
                icon: SvgPicture.asset('assets/images/circleClose.svg'),
                label: Text(
                  'Close this material',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            // SizedBox(height: 20,)
           ]
          )
        )
        );
  }
}

// return Scaffold(
//       appBar: AppBar(title: const Text('Kindacode.com')),
//       body: Padding(
//         padding: const EdgeInsets.all(25),
//         child: RichText(
//           text: const TextSpan(children: [
//             TextSpan(
//                 text: 'The dog ',
//                 style: TextStyle(
//                     fontWeight: FontWeight.bold, color: Colors.red)),
//             TextSpan(
//                 text: 'is a domesticated carnivore ',
//                 style: TextStyle(
//                     fontStyle: FontStyle.italic, color: Colors.purple)),
//             TextSpan(
//                 text: 'of the family Canidae.',
//                 style: TextStyle(color: Colors.green))
//           ]),
//         ),
//       ));

//  Container(
//           // height: 163,
//           // alignment: Align,
//           child: Padding(
//             padding: EdgeInsets.fromLTRB(17.0, 13.0, 7.0, 10.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Container(
//                   child: Row(
//                     children: [
//                       // IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new_rounded, size: 10.0,),),
//                       Text(
//                         'Welcome to Note',
//                         style: TextStyle(fontSize: 14.0, color: Colors.black),
//                       )
//                     ],
//                   ),
//                 ),
//                 Container(
//                   // width: 100.2,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       SvgPicture.asset('assets/images/noteIcon.svg'),
//                       FlatButton.icon(
//                         // height: 40.0,
//                         mouseCursor: MouseCursor.uncontrolled,
//                         onPressed: () {},
//                         icon: SvgPicture.asset(
//                             'assets/images/whiteShareIcon.svg'),
//                         label: Text(
//                           'Share 🤗',
//                           style: TextStyle(color: Colors.white),
//                         ),
//                         color: Colors.green[500],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
