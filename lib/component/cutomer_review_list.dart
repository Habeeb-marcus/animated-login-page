import 'package:flutter/material.dart';

import '../helpers/colors.dart';
import '../helpers/size_calculator.dart';



class Review_List extends StatelessWidget {
   Review_List(
    { Key? key, 
      required String this.reviews,
      required String this.name,
    }) : super(key: key);

    String name = '';
    String reviews = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(14.0, 0, 14.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Text(reviews, style: TextStyle(
            //  backgroundColor: Colors.amber,
             fontFamily: 'Inter',
             fontWeight: FontWeight.w400,
             fontSize: 14.4,
              height: 1.4,
              color: AppColors.blackColor,
           ),),
            SizedBox(
              height: 7.0,
            ),
            // Expanded(
              // child:
               Container(
                  width: double.infinity,
                  // color: Colors.amberAccent,
                child: Text(name,
                textAlign: TextAlign.end,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    fontSize: 14.4,
                    height: 1.4,
                    color: AppColors.greyColor,
                   ),)
                ,
              ),
            // ),
          ],
        ),
      ),
    );
  }
}