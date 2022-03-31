import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../helpers/colors.dart';
import '../helpers/size_calculator.dart';


class cardwidget extends StatelessWidget {
  const cardwidget({
    Key? key, required this.filetype, required this.title, required this.streaks, required this.image, required this.pressed,
  }) : super(key: key);

  final filetype;
  final title;
  final streaks;
  final String image ;
  final  pressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: pressed,
       highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
              width: 1, color: AppColors.lightGrey, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(sizer(true, 12, context)),
        ),
        color: Colors.white,
        child: Padding(
            padding: EdgeInsets.fromLTRB(10, 18, 16.5, 18),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(image),
                SizedBox(width: 8),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: filetype,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: AppColors.greenColor,
                                fontFamily: 'Inter',
                                height: 1.4,
                                fontSize: 14.4)),
                        TextSpan(
                            text: ' • ${title}',
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
                      // '1y ago ⏱🔥 230k study streak',
                      streaks,
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
    );
  }
}
