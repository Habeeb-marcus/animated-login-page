import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_page/helpers/colors.dart';

import '../helpers/size_calculator.dart';

class Paywall_List extends StatelessWidget {
   Paywall_List(
    { Key? key,
    required this.list,
    required this.description,
    }) 
    : super(key: key);
    Widget description;
    String list = '';
  
   
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(9.0, 0, 14.0, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container( 
              height: sizer(true, 26.0, context), 
              width: sizer(true, 28.0, context),
              alignment: Alignment.center,
              
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),  // radius of 10
              color: AppColors.lightGrey ),
            child: Text(list, 
            style: TextStyle(color: AppColors.greyColor),),),
        
            SizedBox(width: 10.0,),
            
              Expanded(
                child: Column(
                      children:[ 
                        description],
                    ),
              ),
          ],
        ),
      ),
      
    );


    
  }
}




      // Container(
            // // color: Colors.white,
            // child: Padding(
            //     padding: const EdgeInsets.fromLTRB(10, 18, 16.5, 18),
            //     child: Row(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         Image.asset('assets/images/bit.png'),
            //         const SizedBox(width: 8),
            //         Expanded(
            //             child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             RichText(
            //               text: const TextSpan(children: [
            //                 TextSpan(
            //                     text: 'Note',
            //                     style: TextStyle(
            //                         fontWeight: FontWeight.w500,
            //                         color: AppColors.greenColor,
            //                         fontFamily: 'Inter',
            //                         height: 1.4,
            //                         fontSize: 14.4)),
            //                 TextSpan(
            //                     text:
            //                         ' • Introduction to the Startup Eco-tec system',
            //                     style: TextStyle(
            //                         fontWeight: FontWeight.w500,
            //                         color: AppColors.text1,
            //                         fontFamily: 'Inter',
            //                         fontSize: 14.4,
            //                         height: 1.4)),
            //               ]),
            //             ) //RichText,
            //             const SizedBox(
            //               height: 10,
            //             ),
            //             Text(
            //               '⏱🔥 230k study streak',
            //               style: TextStyle(
            //                 fontSize: sizer(true, 11.5, context),
            //                 color: AppColors.text3,
            //                 fontWeight: FontWeight.w400,
            //               ),
            //             )
            //           ],// children
            //         )),
            //         const SizedBox(width: 6),
            //         SvgPicture.asset(
            //           "assets/images/Shape.svg",
            //           width: sizer(true, 18, context),
            //         )
            //       ],
            //     ))
                //   )



                  // Expanded(
                  //       child: Row(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       RichText(
                  //         text: const TextSpan(children: [
                  //           TextSpan(
                  //               text: 'Note',
                  //               style: TextStyle(
                  //                   fontWeight: FontWeight.w500,
                  //                   color: AppColors.greenColor,
                  //                   fontFamily: 'Inter',
                  //                   height: 1.4,
                  //                   fontSize: 14.4)),
                  //           TextSpan(
                  //               text:
                  //                   ' • Introduction to the Startup Eco-tec system',
                  //               style: TextStyle(
                  //                   fontWeight: FontWeight.w500,
                  //                   color: AppColors.text1,
                  //                   fontFamily: 'Inter',
                  //                   fontSize: 14.4,
                  //                   height: 1.4)),
                  //         ]),
                  //       ) //RichText,
                  //       const SizedBox(
                  //         height: 10,
                  //       ),
                       
                  //       ) 
                  //     ],// children
                  //   )),