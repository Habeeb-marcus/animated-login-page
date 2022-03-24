import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_page/helpers/colors.dart';
import 'package:login_page/helpers/size_calculator.dart';
import '../../component/paywall_list.dart';
import '../../component/cutomer_review_list.dart';

class Paywall extends StatelessWidget {
  const Paywall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
        
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Center(
              child: TextButton.icon(
                onPressed: (){}, 
                icon: Text('Skip', style: TextStyle(color: Colors.black,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                fontSize: 14.0
                ),),
                label: SvgPicture.asset('assets/images/closeIcon.svg'),
                ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: AppColors.white,
          child: Padding(
              padding: const EdgeInsets.fromLTRB(23.0, 0, 16.0, 197.0),
              child: Column(
                children: [
                  SizedBox(
                    height: sizer(true, 32.0, context),
                  ),
                  Text(
                      'To get the best mEd experience possible, as the deji wants you to, you should subscribe now to get exclusive access to the premium side of mEd 😊',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w800,
                          fontSize: 14.0
                          // sizer(true, 13.0, context,)
                          ,
                          height: 1.4)),
                  const SizedBox(height: 21.0),
                  Paywall_List(
                      list: '1',
                      description: RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text:
                                'By subscribing for a heavily discounted price of N649.99 weekly (around \$1) or N1799.92 monthly (around \$4), you get to access ',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColors.blackColor,
                                fontFamily: 'Inter',
                                height: 1.4,
                                fontSize: 14.4)),
                        TextSpan(
                            text:
                                'to Thousands of Folders, Files, Notes & Questions',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: AppColors.blackColor,
                                fontFamily: 'Inter',
                                height: 1.4,
                                fontSize: 14.4)),
                        TextSpan(
                            text: ' in mEd!',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColors.blackColor,
                                fontFamily: 'Inter',
                                height: 1.4,
                                fontSize: 14.4))
                      ]))),
                  const SizedBox(
                    height: 38.0,
                  ),
                  Paywall_List(
                      list: '2',
                      description: RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text: "You'd also get ",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColors.blackColor,
                                fontFamily: 'Inter',
                                height: 1.4,
                                fontSize: 14.4)),
                        //  You'd also get ,
                        TextSpan(
                            text: "FREE ",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: AppColors.blackColor,
                                fontFamily: 'Inter',
                                height: 1.4,
                                fontSize: 14.4)),

                        TextSpan(
                            text:
                                "regular updates to your mEd experience from our team!",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColors.blackColor,
                                fontFamily: 'Inter',
                                height: 1.4,
                                fontSize: 14.4)),
                      ]))),
                  const SizedBox(
                    height: 36.0,
                  ),
                  Paywall_List(
                      list: '3',
                      description: RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text:
                                'You can unsubscribe anytime without any cancellation fees.',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColors.blackColor,
                                fontFamily: 'Inter',
                                height: 1.4,
                                fontSize: 14.4))
                      ]))),
                  const SizedBox(
                    height: 41.0,
                  ),
                  Container(
                      width: double.infinity,
                      // color: Colors.amberAccent,
                      child: const Text(
                        'Referral ❤️',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: AppColors.blackColor,
                            fontSize: 14,
                            height: 1.4),
                      )),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Paywall_List(
                    list: '❤️',
                    description: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              "Alternatively, you can access mEd for free by referring your friends to the app. Refer 3 subscribers and you'd get 30 days subscription for free.",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.blackColor,
                                  fontFamily: 'Inter',
                                  height: 1.4,
                                  fontSize: 14.4)),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Tap here to start referring',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                color: AppColors.greenColor),
                          )
                        ]),
                    // other: 'Tap here to start referring',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      width: double.infinity,
                      // color: Colors.amberAccent,
                      child: const Text(
                        'Customer Reviews ⭐',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: AppColors.blackColor,
                            fontSize: 14,
                            height: 1.4),
                      )),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Review_List(
                      reviews:
                          '“mEd is a product that has come to do great stuff for learners globally benefit to”',
                      name: 'Israel Olawunmi Esq '),
                  SizedBox(
                    height: 19.0,
                  ),
                  Review_List(
                      reviews:
                          '“mEd is a product that has come to do great good to”',
                      name: 'Adewale Charles'),
                  SizedBox(
                    height: 19.0,
                  ),
                  Review_List(
                      reviews:
                          '“mEd is a product that has come to do great to”',
                      name: 'Fatima Adegoke'),
                ],
              )),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            left: sizer(true, 19.1, context),
            bottom: 55,
            // height: 45,
            width: MediaQuery.of(context).size.width - 40,
            // width: sizer(true, 100, context),
            child: FloatingActionButton(
              elevation: 0,
              backgroundColor: Colors.white,
              heroTag: 'back',
              onPressed: () {/* Do something */},
              child: Container(
                  height: 43,
                  width: double.infinity,
                  // width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    padding: EdgeInsets.symmetric(
                      vertical: 11,
                    ),
                    elevation: 0,
                    color: AppColors.secondaryPurpleColor,
                    onPressed: () {},
                    child: RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: 'Subscribe Weekly',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Inter',
                              fontSize: 13)),
                      TextSpan(
                          text: '(~\$1; available for a limited time)',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Inter',
                              fontSize: 12.5)),
                    ])),
                  )),
            ),
          ),

          Positioned(
            bottom: 7,
            right: sizer(true, 19.1, context),
            height: 43,
            width: MediaQuery.of(context).size.width - 40,
            child: FloatingActionButton(
                backgroundColor: AppColors.secondaryPurpleColor,
                heroTag: 'next',
                elevation: 0,
                foregroundColor: AppColors.secondaryPurpleColor,
                // shape: Border.all(width: 2, color: Colors.green),
                onPressed: () {/* Do something */},
                child: Container(
                    height: 43,
                    width: double.infinity,
                    // width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                              color: AppColors.secondaryPurpleColor, width: 1)),

                      padding: EdgeInsets.symmetric(
                        vertical: 11,
                      ),
                      elevation: 0,
                      // color: AppColors.white,
                      color: Colors.white,
                      onPressed: () {},
                      child: Text(
                        'Subscribe Monthly',
                        style: TextStyle(
                            color: AppColors.secondaryPurpleColor,
                            fontWeight: FontWeight.w800,
                            fontSize: sizer(
                              true,
                              12.5,
                              context,
                            ),
                            letterSpacing: 0,
                            fontFamily: 'Inter'),
                      ),
                    ))

                // Text(
                //   'Next note',
                //   style: TextStyle(
                //       color: AppColors.greenColor,
                //       fontWeight: FontWeight.w800,
                //       fontSize: sizer(
                //         true,
                //         12.5,
                //         context,
                //       ),
                //       letterSpacing: 0,
                //       fontFamily: 'Inter'),
                // ),

                // shape: RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(8),
                //     side: BorderSide(color: AppColors.greenColor, width: 1)),
                // Border.all(width: 2, color: Colors.green,
                //  style:
                //  ),
                ),
          )
          // Add more floating buttons if you want
          // There is no limit
        ],
      ),
    );
  }
}
