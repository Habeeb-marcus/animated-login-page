import '../../helpers/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

import '../../helpers/colors.dart';

displayAlert(
    {String? title,
    String? content,
    String? callToAction,
    bool success = true,
    required BuildContext context,
    Widget? nairaContent,
    bool useNairaContent = false}) {
  // set up the AlertDialog
//  AlertDialog alert = ;

  return showDialog(
    context: context,
    builder: (dialogContext) {
      return Platform.isIOS
          ? // ios AlertDialog
          CupertinoAlertDialog(
              title: Text(title ?? ''),
              content: useNairaContent
                  ? nairaContent
                  : Text(
                      content ?? '',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: AppColors.blackColor),
                    ),
              actions: [
                CupertinoDialogAction(
                    onPressed: () {
                      Navigator.pop(dialogContext);
                    },
                    isDefaultAction: true,
                    child: new Text("Okay Cool"))
              ],
            )
          : AlertDialog(
              title: Text(title ?? '',style: TextStyle(fontFamily: 'Roboto'),),
              content: useNairaContent ? nairaContent : Text(content ?? ''),
              actions: [
                TextButton(
                  child:Text(callToAction?? "Okay Cool"),
                  onPressed: () {
                    Navigator.pop(dialogContext);
                  },
                ),
              ],
            );
    },
  );
}
