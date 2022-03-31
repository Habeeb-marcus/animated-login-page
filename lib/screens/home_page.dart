import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import '../component/cardwidget.dart';
import '../helpers/colors.dart';
// import 'package:read_json_';
import '../helpers/size_calculator.dart';
import 'package:flutter/services.dart' as rootBundle;

// import '../models/folder_model.dart';
import 'package:login_page/models/folder_model.dart';

import 'detailPage/folderDetailPage.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}




Future<List<FolderListModel>> ReadJsonData() async {
  //read json file
  final jsondata = await rootBundle.rootBundle.loadString('jsonfile/data.json');
  //decode json data as list
  final list = json.decode(jsondata) as List<dynamic>;

  //map json and initialize using DataModel
  return list.map((e) => FolderListModel.fromJson(e)).toList();
}




class _HomeState extends State<Home> {
  ScrollController _scrollController = ScrollController();
  bool loading = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child:
            // loading
            //     ? const Center(child: CircularProgressIndicator()):
            SingleChildScrollView(
          controller: _scrollController,
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: sizer(true, 12, context)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: sizer(false, 10, context),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hi, Samuel 😇",
                      style: TextStyle(
                        fontSize: sizer(true, 16, context),
                        color: AppColors.black,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          // showModalBottomSheet(
                          //   isScrollControlled: true,
                          //   barrierColor: Colors.transparent,
                          //   context: context,
                          //   builder:(){},
                          // );
                        },
                        child: CircleAvatar(
                          radius: sizer(true, 18, context),
                          backgroundColor: AppColors.text3,
                          child: Icon(
                            Icons.search,
                            color: AppColors.white,
                            size: sizer(true, 24, context),
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: sizer(false, 17, context),
                ),
                Text(
                  "Some motivation to learn now",
                  style: TextStyle(
                    fontSize: sizer(true, 14, context),
                    color: AppColors.black,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(
                  height: sizer(false, 10, context),
                ),
                Container(
                  width: double.infinity,
                  child: SvgPicture.asset(
                    'assets/images/slide.svg',
                    width: 350,
                    // height: 200,
                  ),
                ),
                SizedBox(
                  height: sizer(false, 10, context),
                ),

                Center(
                  child: SvgPicture.asset(
                    "assets/images/indicator.svg",
                    // width: sizer(true, 18, context),
                  ),
                ),

                // QuoteCarouselSlider(motivations: motivations),
                SizedBox(
                  height: sizer(false, 20, context),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Select Folder to study",
                      style: TextStyle(
                        fontSize: sizer(true, 14, context),
                        color: AppColors.black,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        // showDialog(
                        // context: context,
                        // builder: (context) =>
                        // const RefreshMemoryDialog(fileType: ""));
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/images/Refresh.svg",
                            width: sizer(true, 18, context),
                          ),
                          SizedBox(
                            width: sizer(true, 7, context),
                          ),
                          Text(
                            "Refresh Memory (RM)",
                            style: TextStyle(
                              fontSize: sizer(true, 11.5, context),
                              color: AppColors.secondaryPurpleColor,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: sizer(false, 13, context),
                ),

                // cardwidget(
                //     image: 'assets/images/folder1.png',
                //     filetype: '(Updated) file',
                //     streaks: '1y ago ⏱🔥 230k study streak',
                //     title: 'Introduction to the Startup Ecotec system',
                //     pressed: () {
                //       showDialog(
                //           context: context,
                //           builder: (context) => AlertDialog(
                //                 insetPadding: EdgeInsets.symmetric(
                //                     horizontal: sizer(true, 15, context),
                //                     vertical: 24.0),
                //                 contentPadding: EdgeInsets.symmetric(
                //                   horizontal: sizer(true, 10, context),
                //                   vertical: sizer(false, 14, context),
                //                 ),
                //                 shape: RoundedRectangleBorder(
                //                     borderRadius: BorderRadius.circular(8)),
                //                 content: Column(
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   mainAxisSize: MainAxisSize.min,
                //                   children: [
                //                     Text(
                //                       "Updated File",
                //                       style: TextStyle(
                //                         fontSize: sizer(true, 13, context),
                //                         color: AppColors.blackColor,
                //                         fontWeight: FontWeight.w700,
                //                       ),
                //                     ),
                //                     SizedBox(
                //                       height: sizer(true, 10, context),
                //                     ),
                //                     Text(
                //                       'This is an updated file. View notes under this file to see which note(s) have been added, updated or edited',
                //                       style: TextStyle(
                //                           fontSize: sizer(true, 13, context),
                //                           color: AppColors.blackColor,
                //                           fontWeight: FontWeight.w400,
                //                           height: 1.6),
                //                     ),
                //                     SizedBox(
                //                       height: sizer(true, 10, context),
                //                     ),
                //                     Row(
                //                       mainAxisAlignment:
                //                           MainAxisAlignment.center,
                //                       children: [
                //                         SizedBox(
                //                           width: sizer(true, 150, context),
                //                           height: sizer(true, 38, context),
                //                           child: ElevatedButton(
                //                             child: const Text('Open Folder',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),),
                //                             onPressed: () async {
                //                               Navigator.pop(context);
                //                             },
                //                             style:  ElevatedButton.styleFrom(
                //                               primary: AppColors.greenColor,
                //                               elevation: 0,
                //                               shape: RoundedRectangleBorder(
                //                                 borderRadius: BorderRadius.circular(8)
                //                               )
                //                                    // Background color
                //                             ),
                //                           ),
                //                         ),
                //                         SizedBox(
                //                           width: sizer(true, 10, context),
                //                         ),
                //                         SizedBox(
                //                           width: sizer(true, 150, context),
                //                             height: sizer(true, 38, context),
                //                           child: ElevatedButton(
                //                               child: const Text('Cancel', style: TextStyle(
                //                                       fontSize: 14,
                //                                       fontWeight:
                //                                           FontWeight.w800,
                //                                           color: AppColors.greenColor
                //                                           )),
                //                               onPressed: () async {
                //                                  Navigator.pop(context);
                //                               },
                //                               style: ElevatedButton.styleFrom(
                //                                 primary: Colors.white,
                //                                 elevation: 0,
                //                                 shape: RoundedRectangleBorder(
                //                                   borderRadius: BorderRadius.circular(8),
                //                                   side: BorderSide(color: AppColors.greenColor,)
                //                                 )
                //                               ),
                //                               ),
                //                         ),
                //                       ],
                //                     ),
                //                   ],
                //                 ),
                //               ));
                //     }),

                FutureBuilder(
                  future: ReadJsonData(),
                  builder: ((context, data) {
                     if (data.hasError) {
                        //in case if error found
                        return Center(child: Text("${data.error}"));
                      } else if (data.hasData) {
                     var items = data.data as List<FolderListModel>;
                    return SizedBox(
                      height: 350.0,
                      child: ListView.builder(
                        itemCount: items == null ? 0 : items.length,
                        itemBuilder: ( context,   index) {
                         return 
                      // Card(
                      //               elevation: 5,
                      //               margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      //               child: Container(
                      // child: Text('${items[index].title}'),
                      //               ));
                          cardwidget(
                                image: '${items[index].image}',
                                filetype: '${items[index].type}',
                                streaks: '${items[index].streaks}',
                                title:
                                    '${items[index].title}',
                                     pressed: 
                                     
                                     () {
                                       print('tapped');
                                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => FolderDetail(item: items[index]) )); 
                                       
                          //              if(items[index].type == "upadate" || items[index].type == "Edited" ){
                          //                 showDialog(
                          // context: context,
                          // builder: (context) => AlertDialog(
                          //       insetPadding: EdgeInsets.symmetric(
                          //           horizontal: sizer(true, 15, context),
                          //           vertical: 24.0),
                          //       contentPadding: EdgeInsets.symmetric(
                          //         horizontal: sizer(true, 10, context),
                          //         vertical: sizer(false, 14, context),
                          //       ),
                          //       shape: RoundedRectangleBorder(
                          //           borderRadius: BorderRadius.circular(8)),
                          //       content: Column(
                          //         crossAxisAlignment: CrossAxisAlignment.start,
                          //         mainAxisSize: MainAxisSize.min,
                          //         children: [
                          //           Text(
                          //             "Updated File",
                          //             style: TextStyle(
                          //               fontSize: sizer(true, 13, context),
                          //               color: AppColors.blackColor,
                          //               fontWeight: FontWeight.w700,
                          //             ),
                          //           ),
                          //           SizedBox(
                          //             height: sizer(true, 10, context),
                          //           ),
                          //           Text(
                          //             'This is an updated file. View notes under this file to see which note(s) have been added, updated or edited',
                          //             style: TextStyle(
                          //                 fontSize: sizer(true, 13, context),
                          //                 color: AppColors.blackColor,
                          //                 fontWeight: FontWeight.w400,
                          //                 height: 1.6),
                          //           ),
                          //           SizedBox(
                          //             height: sizer(true, 10, context),
                          //           ),
                          //           Row(
                          //             mainAxisAlignment:
                          //                 MainAxisAlignment.center,
                          //             children: [
                          //               SizedBox(
                          //                 width: sizer(true, 150, context),
                          //                 height: sizer(true, 38, context),
                          //                 child: ElevatedButton(
                          //                   child: const Text('Open Folder',style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),),
                          //                   onPressed: () async {
                          //                     Navigator.pop(context);
                          //                   },
                          //                   style:  ElevatedButton.styleFrom(
                          //                     primary: AppColors.greenColor,
                          //                     elevation: 0,
                          //                     shape: RoundedRectangleBorder(
                          //                       borderRadius: BorderRadius.circular(8)
                          //                     )
                          //                          // Background color
                          //                   ),
                          //                 ),
                          //               ),
                          //               SizedBox(
                          //                 width: sizer(true, 10, context),
                          //               ),
                          //               SizedBox(
                          //                 width: sizer(true, 150, context),
                          //                   height: sizer(true, 38, context),
                          //                 child: ElevatedButton(
                          //                     child: const Text('Cancel', style: TextStyle(
                          //                             fontSize: 14,
                          //                             fontWeight:
                          //                                 FontWeight.w800,
                          //                                 color: AppColors.greenColor
                          //                                 )),
                          //                     onPressed: () async {
                          //                        Navigator.pop(context);
                          //                     },
                          //                     style: ElevatedButton.styleFrom(
                          //                       primary: Colors.white,
                          //                       elevation: 0,
                          //                       shape: RoundedRectangleBorder(
                          //                         borderRadius: BorderRadius.circular(8),
                          //                         side: BorderSide(color: AppColors.greenColor,)
                          //                       )
                          //                     ),
                          //                     ),
                          //               ),
                          //             ],
                          //           ),
                          //         ],
                          //       ),
                          //     ));
                          //              }
                                       
                                       },
                              
                              );
                                  },),
                    );
                } else {
                        // show circular progress while data is getting fetched from json file
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                  })),

             
                SizedBox(
                  height: sizer(false, 100, context),
                ),

                // if (gettingMore)
                //   const Padding(
                //       padding: EdgeInsets.symmetric(vertical: 50),
                //       child: SizedBox(
                //           child: Center(
                //               child:
                //                   CircularProgressIndicator.adaptive()))),

                SizedBox(
                  height: sizer(false, 100, context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FolderCard {}
