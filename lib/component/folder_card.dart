// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:mEd/components/dialogs/alert_dialog.dart';
// import 'package:mEd/helpers/colors.dart';
// import 'package:mEd/helpers/extensions.dart';
// import 'package:mEd/helpers/size_calculator.dart';

// import 'package:mEd/helpers/router.dart';
// import 'package:mEd/models/folder_model.dart';

// import '../helpers/colors.dart';
// import '../helpers/size_calculator.dart';
// import '../more/custom_dialog.dart';

// class FolderCard extends StatefulWidget {
//   final bool disabled;
//   final List<String> files, notes;
//   final Map<String, dynamic>? cardData;
//   final Function()? shareFn;
//   const FolderCard(
//       {Key? key,
//       this.folderModel = const FolderModel(),
//       this.cardData,
//       required this.imageUrl,
//       required this.bgColor,
//       required this.type,
//       required this.title,
//       required this.streakText,
//       this.disabled = false,
//       required this.files,
//       required this.notes,
//       this.id = '',
//       this.shareFn,
//       required this.status})
//       : super(key: key);

//   final String imageUrl, streakText, type, title, bgColor, id, status;
//   final FolderModel? folderModel;

//   @override
//   State<FolderCard> createState() => _FolderCardState();
// }

// class _FolderCardState extends State<FolderCard> {
//   void gotoDetails() {
//     var cardData = FolderModel(
//         background: widget.bgColor,
//         id: widget.id,
//         title: widget.title,
//         type: widget.type,
//         icon: widget.imageUrl,
//         status: widget.status,
//         files: widget.files,
//         notes: widget.notes);

//     if (widget.type == "Folder") {
//       widget.folderModel?.title != ''
//           ? Navigator.pushNamed(context, RouteHelper.folderPageRoute,
//               arguments: widget.folderModel)
//           : Navigator.pushNamed(context, RouteHelper.folderPageRoute,
//               arguments: cardData);
//     } else if (widget.type == "File") {
//       // Navigator.pushNamed(context, RouteHelper.filePageRoute);
//       Navigator.pushNamed(context, RouteHelper.filePageRoute,
//           arguments: widget.folderModel);
//     } else {
//       Navigator.pushNamed(context, RouteHelper.notePageRoute);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () async {
//         if (widget.disabled == true) {
//           return;
//         } else {
//           gotoDetails();
//         }
//       },
//       child: Card(
//         elevation: 0,
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(sizer(true, 12, context)),
//             side: BorderSide(color: Color(0xFFF5F5F5), width: 1)
//             ),
//         color: AppColors.white,
//         child: Padding(
//           padding: EdgeInsets.symmetric(
//             horizontal: sizer(true, 10, context),
//             vertical: sizer(false, 10, context),
//           ),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 padding: EdgeInsets.all(5),
//                 width: sizer(true, 39, context),
//                 height: sizer(true, 39, context),
//                 decoration: BoxDecoration(
//                   color: widget.bgColor != null
//                       ? HexColor.fromHex(widget.bgColor)
//                       : HexColor.fromHex("0x00000000"),
        
//                   borderRadius: BorderRadius.circular(sizer(true, 12, context)),
//                 ),
//                 child: InkWell(
//                   onTap: () async {
//                     gotoDetails();
//                   },
//                   child: widget.imageUrl != null
//                         ? Image.network(
//                             widget.imageUrl,
//                             height: sizer(true, 10, context),
//                             width: sizer(true, 10, context),
//                           )
//                         : Container(),
                  
//                 ),
//               ),
//               SizedBox(
//                 width: sizer(true, 10, context),
//               ),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     RichText(
//                       textAlign: TextAlign.start,
//                       text: TextSpan(
//                           recognizer: TapGestureRecognizer()..onTap = () {
//                         showDialog(
//                                   context: context,
//                                   builder: (context) => CustomDialog(
//                                     description: 'This is a folder. Tap the folder to see the files under it.',
//                                   ));
//                           },
//                           text: widget.type,
//                           style: TextStyle(
//                             fontFamily: 'Inter',
//                               height: 19.5 / 13, // for line height
//                               fontWeight: FontWeight.w500,
//                               fontSize: sizer(true, 13, context),
//                               color: AppColors.greenColor),
//                           children: <TextSpan>[
//                             TextSpan(
//                               text: ' • ',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w500,
//                                 fontSize: sizer(true, 13, context),
//                                 color: AppColors.text1,
//                               ),
//                             ),
//                             TextSpan(
//                                 text: widget.title,
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: sizer(true, 13, context),
//                                   color: AppColors.text1,
//                                 ),
//                                 recognizer: TapGestureRecognizer()
//                                   ..onTap = () {
//                                     gotoDetails();
//                                   }),
//                           ]),
//                     ),
//                     SizedBox(
//                       height: sizer(false, 14, context),
//                     ),
//                     // Text(
//                     //   widget.streakText, //"⏱🔥 230k study streak",
//                     //   style: TextStyle(
//                     //     fontSize: sizer(true, 13, context),
//                     //     color: AppColors.text3,
//                     //     fontWeight: FontWeight.w400,
//                     //   ),
//                     // ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 width: sizer(true, 10, context),
//               ),
//               InkWell(
//                 onTap: widget.shareFn,
//                 child: SvgPicture.asset(
//                   "assets/images/Shape.svg",
//                   width: sizer(true, 18, context),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
