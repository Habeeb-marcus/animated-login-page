import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_page/models/folder_model.dart';

import '../../component/cardwidget.dart';
import '../../helpers/colors.dart';
import '../../helpers/size_calculator.dart';

class FolderDetail extends StatefulWidget {
  const FolderDetail({ Key? key, this.FolderListModel }) : super(key: key);

  final FolderListModel;

  @override
  State<FolderDetail> createState() => _FolderDetailState();
}

class _FolderDetailState extends State<FolderDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 70,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[50],
        // backgroundColor: Colors.amber ,
        // toolbarHeight: 90.0,
        title: Text(
          'Welcome to Folder',
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
      body: SafeArea(
        child: Padding(
         padding: EdgeInsets.symmetric(horizontal: sizer(true, 12, context)),
          child: SingleChildScrollView(
            child:
              cardwidget(
                      image: 'assets/images/folder1.png',
                      filetype: '(Updated) file',
                      streaks: '1y ago ⏱🔥 230k study streak',
                      title: 'Introduction to the Startup Ecotec system',
                      pressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  insetPadding: EdgeInsets.symmetric(
                                      horizontal: sizer(true, 15, context),
                                      vertical: 24.0),
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: sizer(true, 10, context),
                                    vertical: sizer(false, 14, context),
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  content: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'ewef',
                                        style: TextStyle(
                                          fontSize: sizer(true, 13, context),
                                          color: AppColors.blackColor,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(
                                        height: sizer(true, 10, context),
                                      ),
                                      Text(
                                        'This is an updated file. View notes under this file to see which note(s) have been added, updated or edited',
                                        style: TextStyle(
                                            fontSize: sizer(true, 13, context),
                                            color: AppColors.blackColor,
                                            fontWeight: FontWeight.w400,
                                            height: 1.6),
                                      ),
                                      SizedBox(
                                        height: sizer(true, 10, context),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: sizer(true, 150, context),
                                            height: sizer(true, 38, context),
                                            child: ElevatedButton(
                                              child: const Text('Open Folder',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),),
                                              onPressed: () async {
                                                Navigator.pop(context);
                                              },
                                              style:  ElevatedButton.styleFrom(
                                                primary: AppColors.greenColor,
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(8)
                                                )
                                                     // Background color
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: sizer(true, 10, context),
                                          ),
                                          SizedBox(
                                            width: sizer(true, 150, context),
                                              height: sizer(true, 38, context),
                                            child: ElevatedButton(
                                                child: const Text('Cancel', style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w800,
                                                            color: AppColors.greenColor
                                                            )),
                                                onPressed: () async {
                                                   Navigator.pop(context);
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  primary: Colors.white,
                                                  elevation: 0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(8),
                                                    side: BorderSide(color: AppColors.greenColor,)
                                                  )
                                                ),
                                                ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ));
                      }),),
        ),
      ),
      
    );
  }
}