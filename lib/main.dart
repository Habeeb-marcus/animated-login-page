// // import 'dart:html';

import 'package:flutter/material.dart';
import 'screens/login/login.dart';
import 'screens/files/files.dart';
import 'screens/paywall/paywall.dart';
import 'screens/page/page.dart';
import 'screens/imageStreak/image_streak.dart';
import 'screens/web.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    color: Colors.white,
    home:  Files()
  ));
}

// import 'dart:convert';
// import 'dart:io';
// import 'dart:async';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/services.dart';
// import 'package:http/http.dart' as http;

// import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:login_page/providers/note.dart';
// import 'package:flutter_quill/flutter_quill.dart' hide Text, Style;
// import 'helpers/colors.dart';
// import 'helpers/size_calculator.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';
// import 'package:webview_flutter_plus/webview_flutter_plus.dart';

// import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

// Future<String> fetchNote() async {
//   var id;
//   final url =
//       Uri.parse('https://med-backend-api-stagging.herokuapp.com/api/v1/notes');
//   String content = "no data";
//   try {
//     final response = await http.get(
//       url,
//       headers: {
//         HttpHeaders.authorizationHeader:
//             'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJwYXlsb2FkIjp7ImVtYWlsIjoiaC5tYWt1c290YUBnbWFpbC5jb20iLCJkZXZpY2UiOiIifSwiaWF0IjoxNjQ2NTU5MjEzLCJleHAiOjE2NDc4NTUyMTN9.jma1nj_N-1d5xL4OZhZuusB2eo-zAlprTd3oCNmlbs8',
//       },
//     );
//     var jsonData = json.decode(response.body);
//     // var jsonData = _note.fromJson(json.decode(response.body));
//     // print(jsonData['content']['notes']);
//     print(jsonData);

//     // var content = jsonData['content']['notes']['content'];
//     // print(jsonData);
//     // final _note = jsonData['content']['note']['content'];

//     for (var i = 0; i < jsonData['content']['notes'].length; i++) {
//       content = jsonData['content']['notes'][i]['content'];
//       var title = jsonData['content']['notes'][i]['title'];
//       var id = jsonData['content']['notes'][i]['id'];
//       // print(id);
//       // print(title);
//       // print(content);
//     }
//     print(response.statusCode);

//     // final responseJson = jsonDecode(response.body);
//     // return Note.fromJson(responseJson);
//     // print(json.decode(response.body));
//   } catch (error) {
//     content = error.toString();
//     throw (error);
//   }
//   return content;
// }

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     // fetchNote();
//     return MaterialApp(
//       home: MyHomePage(title: 'flutter_html Example'),
//     );
//   }
// }

// // var htmlData = QuillEditor.basic(;

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// // @override
// // void initState(){
// //   fetchNote();
// // }
// // QuillController _controller = QuillController.basic();
// //   Future<void> _loadFromAssets() async {
// // var myJSON = jsonDecode('assets/sample_data.json');
// // final doc =  Document.fromJson(myJSON);
// // print(myJSON);
// //   }
// class _MyHomePageState extends State<MyHomePage> {
//   String _note = 'No data yet';
//   String title = '';
//   late String content;

//   String data = "i am here working";

//   // QuillController? _controller;
//    late WebViewPlusController _controller;
//   final FocusNode _focusNode = FocusNode();

//   set height(double height) {}

//   @override
//   void initState() {
//     super.initState();
//     fetchNote();
//     // _loadFromAssets();
//     // fetchNote().then((response) {
//     //   setState(() {
//     //     data = response;
//     //   });
//     // });
//   }

//   // Future<void> _loadFromAssets() async {
//   //   print('sample data');
//   //   try {
//   //     final result = await rootBundle.loadString('assets/sample_data.json');
//   //     print(result);
//   //     final doc = Document.fromJson(jsonDecode(result));
//   //     setState(() {
//   //       _controller = QuillController(
//   //           document: doc, selection: const TextSelection.collapsed(offset: 0));
//   //     });
//   //   } catch (error) {
//   //     final doc = Document()..insert(0, 'Empty asset');
//   //     setState(() {
//   //       _controller = QuillController(
//   //           document: doc, selection: const TextSelection.collapsed(offset: 0));
//   //     });
//   //   }
//   // }

//   //   void updateHeight() async {
//   //   double height = double.parse(await controller
//   //       .evaluateJavascript("document.documentElement.scrollHeight;"));

//   //   if (this.height != height) {
//   //     setState(() {
//   //       this.height = height;
//   //     });
//   //   }
//   // }

//   // htmlData

//   // QuillController _controller = QuillController.basic();

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = 1;
    


//     // if (_controller == null) {
//     //   return const Scaffold(body: Center(child: Text('Loading...')));
//     // }
//     return Scaffold(
//         appBar: AppBar(
//           elevation: 0,
//           toolbarHeight: 70,
//           automaticallyImplyLeading: false,
//           backgroundColor: Colors.grey[50],
//           // backgroundColor: Colors.amber ,
//           // toolbarHeight: 90.0,
//           title: Text(
//             'Welcome to Note',
//             style: TextStyle(
//                 color: Colors.black,
//                 fontSize: sizer(true, 14, context),
//                 fontFamily: 'Inter',
//                 fontWeight: FontWeight.w800),
//           ),
//           actions: [
//             IconButton(
//                 onPressed: () {},
//                 icon: SvgPicture.asset('assets/images/noteIcon.svg')),
//             const SizedBox(width: 20.0),
//             Padding(
//               padding: const EdgeInsets.fromLTRB(0, 13, 13, 13),
//               child: RaisedButton.icon(
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8)),
//                 elevation: 0,
//                 color: AppColors.greenColor,
//                 onPressed: () {},
//                 icon: SvgPicture.asset(
//                   'assets/images/whiteShareIcon.svg',
//                   width: sizer(true, 14, context),
//                 ),
//                 label: Text(
//                   'Share 🤗',
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontSize: sizer(true, 13, context),
//                       fontWeight: FontWeight.w800),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         body: SingleChildScrollView(
//             child: Column(children: [
//           Padding(
//               padding: const EdgeInsets.fromLTRB(16, 0, 12.8, 0),
//               child: Column(children: [
//                 // card
//                 Card(
//                   elevation: 0,
//                   shape: RoundedRectangleBorder(
//                     side: const BorderSide(
//                         width: 1,
//                         color: AppColors.lightGrey,
//                         style: BorderStyle.solid),
//                     borderRadius:
//                         BorderRadius.circular(sizer(true, 12, context)),
//                   ),
//                   color: Colors.white,
//                   child: Padding(
//                       padding: const EdgeInsets.fromLTRB(10, 18, 16.5, 18),
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Image.asset('assets/images/bit.png'),
//                           const SizedBox(width: 8),
//                           Expanded(
//                               child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               RichText(
//                                 text: const TextSpan(children: [
//                                   TextSpan(
//                                       text: 'Note',
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.w500,
//                                           color: AppColors.greenColor,
//                                           fontFamily: 'Inter',
//                                           height: 1.4,
//                                           fontSize: 14.4)),
//                                   TextSpan(
//                                       text:
//                                           ' • Introduction to the Startup Eco-tec system',
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.w500,
//                                           color: AppColors.text1,
//                                           fontFamily: 'Inter',
//                                           fontSize: 14.4,
//                                           height: 1.4)),
//                                 ]),
//                               ),
//                               const SizedBox(
//                                 height: 10,
//                               ),
//                               Text(
//                                 '⏱🔥 230k study streak',
//                                 style: TextStyle(
//                                   fontSize: sizer(true, 11.5, context),
//                                   color: AppColors.text3,
//                                   fontWeight: FontWeight.w400,
//                                 ),
//                               )
//                             ],
//                           )),
//                           const SizedBox(width: 6),
//                           SvgPicture.asset(
//                             "assets/images/Shape.svg",
//                             width: sizer(true, 18, context),
//                           )
//                         ],
//                       )),
//                 ),

//                 // Container(
//                 //   child: QuillEditor(
//                 //     controller: _controller!,
//                 //     scrollController: ScrollController(),
//                 //     scrollable: true,
//                 //     focusNode: _focusNode,
//                 //     autoFocus: false,
//                 //     readOnly: true,
//                 //     placeholder: 'Add content',
//                 //     expands: false,
//                 //     padding: EdgeInsets.zero,
//                 //     enableInteractiveSelection: false,
//                 //     // customStyles: DefaultStyles(borderRadius: 5) ,
//                 //     // showCursor: false,
//                 //   ),
//                 // ),

//                 Container(
//                   width: width,
//                   height: 500,
//                   child: WebViewPlus(
//                     javascriptMode: JavascriptMode.unrestricted,
//                         onPageFinished: (url) {
//                       _controller.getHeight().then((double height) {
//                         print("Height:  " + height.toString());
//                         setState(() {
//                           height = height;
//                         });
//                       });
//                     },
//                     //    javascriptChannels: Set.from([
//                     //   JavascriptChannel(
//                     //       name: "Resize",
//                     //       onMessageReceived: (JavascriptMessage message) {
//                     //         updateHeight();
//                     //       })
//                     // ]),
//                     onWebViewCreated: (WebViewPlusController controller) {
//                       controller.loadString(
//                         r"""
//              <html lang="en">
//               <script>
//               const resizeObserver = new ResizeObserver(entries =>
//               Resize.postMessage("height" + (entries[0].target.clientHeight).toString()) )
//               resizeObserver.observe(document.body)

//                     // HtmlWidget(
//                     // "<img style=\"border-radius: 12px\" src='https://onemillionlandlord.ng/wp-content/uploads/2020/10/Onike-Yaba.jpg'><p><span style=\"background-color: transparent; color: rgb(0, 0, 0);\">MAL is mLaw's file or hub for lawyers and senior persons in the legal industry to give pieces of advice to lawyers who are currently in active practice as well as lawyers who left active practice and may want to return back to practicing law.</span></p><p><br></p><p><span style=\"background-color: transparent; color: rgb(0, 0, 0);\">Each advice is generally in an easy-to-consume question format and can cover a broad range of topics, for example:</span></p><ul><li><span style=\"background-color: transparent;\">How do I rejig my CV after a long spell outside active litigation practice?</span></li><li><span style=\"background-color: transparent;\">How do I avoid intimidation in court?</span></li><li><span style=\"background-color: transparent;\">How do I form good relationships with court registrars?</span></li></ul><p><br></p><p><span style=\"background-color: transparent; color: rgb(0, 0, 0);\">With that in mind, you can contribute to MAL by simply scrolling to the bottom of this Note, then tapping the '</span><strong style=\"background-color: transparent; color: rgb(0, 0, 0);\">Footnotes</strong><span style=\"background-color: transparent; color: rgb(0, 0, 0);\">' text and following the instructions</span><sup>1</sup> <span style=\"background-color: transparent; color: rgb(0, 0, 0);\">.</span></p><p><br></p><p><span style=\"background-color: transparent; color: rgb(0, 0, 0);\">Thank you.</span></p>"),
              
//       //         </script>
//       //         <body>
//       //         "<img src='https://onemillionlandlord.ng/wp-content/uploads/2020/10/Onike-Yaba.jpg'><p><span style=\"background-color: transparent; color: rgb(0, 0, 0);\">MAL is mLaw's file or hub for lawyers and senior persons in the legal industry to give pieces of advice to lawyers who are currently in active practice as well as lawyers who left active practice and may want to return back to practicing law.</span></p><p><br></p><p><span style=\"background-color: transparent; color: rgb(0, 0, 0);\">Each advice is generally in an easy-to-consume question format and can cover a broad range of topics, for example:</span></p><ul><li><span style=\"background-color: transparent;\">How do I rejig my CV after a long spell outside active litigation practice?</span></li><li><span style=\"background-color: transparent;\">How do I avoid intimidation in court?</span></li><li><span style=\"background-color: transparent;\">How do I form good relationships with court registrars?</span></li></ul><p><br></p><p><span style=\"background-color: transparent; color: rgb(0, 0, 0);\">With that in mind, you can contribute to MAL by simply scrolling to the bottom of this Note, then tapping the '</span><strong style=\"background-color: transparent; color: rgb(0, 0, 0);\">Footnotes</strong><span style=\"background-color: transparent; color: rgb(0, 0, 0);\">' text and following the instructions</span><sup>1</sup> <span style=\"background-color: transparent; color: rgb(0, 0, 0);\">.</span></p><p><br></p><p><span style=\"background-color: transparent; color: rgb(0, 0, 0);\">Thank you.</span></p>"
//       //         </body>
//       //        </html>
//       // """,
//                       );
//                     },

//                     //  onWebViewCreated: (WebViewPlusController controller) {
//                     //           controller.addJavaScriptHandler(
//                     //               handlerName: "newHeight",
//                     //               callback: (List<dynamic> arguments) async {
//                     //                 int? height = arguments.isNotEmpty
//                     //                     ? arguments[0]
//                     //                     : await controller.getContentHeight();
//                     //                 if (mounted)
//                     //                   setState(() => this.height = height!.toDouble());
//                     //               });
//                     //         },
//                   ),
//                 ),

//                 Text(title),

//                 const SizedBox(
//                   height: 24,
//                 ),

//                 Container(
//                     width: double.infinity,
//                     // color: Colors.amberAccent,
//                     child: const Text(
//                       'Footnotes',
//                       textAlign: TextAlign.left,
//                       style: TextStyle(
//                           decoration: TextDecoration.underline,
//                           fontWeight: FontWeight.w700,
//                           color: AppColors.blackColor,
//                           fontSize: 14,
//                           height: 1.4),
//                     )),

//                 const SizedBox(
//                   height: 15,
//                 ),

//                 Container(
//                   // height: 40,
//                   width: double.infinity,
//                   child: RaisedButton.icon(
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8)),
//                       padding: const EdgeInsets.symmetric(vertical: 15),
//                       elevation: 0,
//                       color: AppColors.secondaryPurpleColor,
//                       onPressed: () {},
//                       icon: SvgPicture.asset('assets/images/thumb.svg'),
//                       label: const Text('Attempt Questions',
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.w800,
//                               fontFamily: 'Inter',
//                               fontSize: 15))),
//                 ),
//                 const SizedBox(
//                   height: 80,
//                 ),
//               ]))
//         ])

//             //Text('note page', style: TextStyle(fontSize: 20, color: Colors.amber),)

//             ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//         floatingActionButton: Stack(fit: StackFit.expand, children: [
//           Positioned(
//             left: 8,
//             bottom: sizer(true, 5, context),
//             height: sizer(true, 40, context),
//             width: sizer(true, 100, context),
//             child: FloatingActionButton(
//               elevation: 0,
//               backgroundColor: Colors.white,
//               heroTag: 'back',
//               onPressed: () {/* Do something */},
//               child: Text(
//                 'Last note',
//                 style: TextStyle(
//                     color: AppColors.greenColor,
//                     fontWeight: FontWeight.w800,
//                     fontSize: sizer(
//                       true,
//                       12.5,
//                       context,
//                     ),
//                     letterSpacing: 0,
//                     fontFamily: 'Inter'),
//               ),
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8),
//                   side: const BorderSide(
//                     width: 1,
//                     color: AppColors.greenColor,
//                   )),
//             ),
//           ),
//           Positioned(
//             bottom: sizer(true, 5, context),
//             right: 8,
//             width: sizer(true, 100, context),
//             height: sizer(true, 40, context),
//             child: FloatingActionButton(
//               backgroundColor: Colors.white,
//               heroTag: 'next',
//               elevation: 0,
//               foregroundColor: Colors.green,
//               // shape: Border.all(width: 2, color: Colors.green),
//               onPressed: () {/* Do something */},
//               child: Text(
//                 'Next note',
//                 style: TextStyle(
//                     color: AppColors.greenColor,
//                     fontWeight: FontWeight.w800,
//                     fontSize: sizer(
//                       true,
//                       12.5,
//                       context,
//                     ),
//                     letterSpacing: 0,
//                     fontFamily: 'Inter'),
//               ),
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8),
//                   side:
//                       const BorderSide(color: AppColors.greenColor, width: 1)),
//               // Border.all(width: 2, color: Colors.green,
//               //  style:
//               //  ),
//             ),
//           ),
//           // Add more floating buttons if you want
//           // There is no limit
//         ]));
//   }
// }

// // void updateHeight() async{
// //       var controller;
// //       double height = double.parse(await controller
// //         .evaluateJavascript(
// //         "document.documentElement.scrollHeight;"));
    
// //     if(this.height != height) {
// //       setState(() {
// //         this.height = height;
// //       });
// //     }
// // }

// // class _note {
// //  final String content;

// // _note({required this.content});

// //   factory _note.fromJson(Map<String, dynamic> json) {
// //     return _note(
// //       content: json['content']

// //     );
// // }
// // }

// // // @override
// // void initState() {
// //   super.initState();
// //   post = fetchPost();


// //  Widget _buildWelcomeEditor(BuildContext context) {
//     var quillEditor = QuillEditor(
//         controller: _controller!,
//         scrollController: ScrollController(),
//         scrollable: true,
//         focusNode: _focusNode,
//         autoFocus: false,
//         readOnly: false,
//         placeholder: 'Add content',
//         expands: false,
//         padding: EdgeInsets.zero,
//     );
//   }