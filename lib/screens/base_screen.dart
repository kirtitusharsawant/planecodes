import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planecode/constants/text_constants.dart';
import 'package:planecode/helpers/common_ui.dart';
import 'package:planecode/helpers/responsive.dart';
import 'package:planecode/screens/page_four/page_four_screen.dart';
import 'package:planecode/screens/page_one/page_one_screen.dart';
import 'package:planecode/screens/page_three/page_three_screen.dart';
import 'package:planecode/screens/page_two/page_two_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int index = 0;
  ScrollController ctr = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonUI.commonWebAppBar(context, [
        Responsive.isDesktop(context) || Responsive.isTablet(context)
            ? CommonUI.commonAppBarAction(
                text: appBarActions,
                isVisible: index == 0,
                onTap: () {
                  setState(() {
                    index = 0;
                    ctr.animateTo(
                      0,
                      duration: const Duration(milliseconds: 1500),
                      curve: Curves.easeInOut,
                    );
                  });
                },
              )
            : CommonUI.commonAppBarAction(
                text: appBarActions,
                isVisible: index == 0,
                actionFontSize: 12.sp,
                horizontalPadding: 7,
                onTap: () {
                  setState(() {
                    index = 0;
                    ctr.animateTo(
                      0,
                      duration: const Duration(milliseconds: 1500),
                      curve: Curves.easeInOut,
                    );
                  });
                },
              ),
        // CommonUI.commonAppBarAction(
        //   text: appBarActions,
        //   isVisible: index == 0,
        //   onTap: () {
        //     setState(() {
        //       index = 0;
        //       ctr.animateTo(
        //         0,
        //         duration: const Duration(milliseconds: 1500),
        //         curve: Curves.easeInOut,
        //       );
        //     });
        //   },
        // ),

        Responsive.isDesktop(context) || Responsive.isTablet(context)
            ? CommonUI.commonAppBarAction(
                text: appBarActionsaboutus,
                isVisible: index == 1,
                onTap: () {
                  setState(() {
                    index = 1;
                    ctr.animateTo(
                      MediaQuery.of(context).size.height,
                      duration: const Duration(milliseconds: 1500),
                      curve: Curves.easeInOut,
                    );
                  });
                },
              )
            : CommonUI.commonAppBarAction(
                text: appBarActionsaboutus,
                isVisible: index == 1,
                actionFontSize: 12.sp,
                horizontalPadding: 7,
                onTap: () {
                  setState(() {
                    index = 1;
                    ctr.animateTo(
                      MediaQuery.of(context).size.height,
                      duration: const Duration(milliseconds: 1500),
                      curve: Curves.easeInOut,
                    );
                  });
                },
              ),

        Responsive.isDesktop(context) || Responsive.isTablet(context)
            ? CommonUI.commonAppBarAction(
                text: appBarActionsServices,
                isVisible: index == 2,
                onTap: () {
                  setState(() {
                    index = 2;
                    Responsive.isDesktop(context)
                        ? ctr.animateTo(
                            MediaQuery.of(context).size.height * 2.1,
                            duration: const Duration(milliseconds: 1500),
                            curve: Curves.easeInOut,
                          )
                        : Responsive.isTablet(context)
                            ? ctr.animateTo(
                                MediaQuery.of(context).size.height * 3.0,
                                duration: const Duration(milliseconds: 1500),
                                curve: Curves.easeInOut,
                              )
                            : ctr.animateTo(
                                MediaQuery.of(context).size.height * 2.23,
                                duration: const Duration(milliseconds: 1500),
                                curve: Curves.easeInOut,
                              );
                  });
                },
              )
            : CommonUI.commonAppBarAction(
                text: appBarActionsServices,
                isVisible: index == 2,
                actionFontSize: 12.sp,
                horizontalPadding: 7,
                onTap: () {
                  setState(() {
                    index = 2;
                    Responsive.isDesktop(context)
                        ? ctr.animateTo(
                            MediaQuery.of(context).size.height * 2.1,
                            duration: const Duration(milliseconds: 1500),
                            curve: Curves.easeInOut,
                          )
                        : Responsive.isTablet(context)
                            ? ctr.animateTo(
                                MediaQuery.of(context).size.height * 3.0,
                                duration: const Duration(milliseconds: 1500),
                                curve: Curves.easeInOut,
                              )
                            : ctr.animateTo(
                                MediaQuery.of(context).size.height * 2.23,
                                duration: const Duration(milliseconds: 1500),
                                curve: Curves.easeInOut,
                              );
                  });
                },
              ),

        // CommonUI.commonAppBarAction(
        //   text: appBarActionsServices,
        //   isVisible: index == 2,
        //   onTap: () {
        //     setState(() {
        //       index = 2;
        //       Responsive.isDesktop(context)
        //           ? ctr.animateTo(
        //               MediaQuery.of(context).size.height * 2.1,
        //               duration: const Duration(milliseconds: 1500),
        //               curve: Curves.easeInOut,
        //             )
        //           : Responsive.isTablet(context)
        //               ? ctr.animateTo(
        //                   MediaQuery.of(context).size.height * 3.0,
        //                   duration: const Duration(milliseconds: 1500),
        //                   curve: Curves.easeInOut,
        //                 )
        //               : ctr.animateTo(
        //                   MediaQuery.of(context).size.height * 2.23,
        //                   duration: const Duration(milliseconds: 1500),
        //                   curve: Curves.easeInOut,
        //                 );
        //     });
        //   },
        // ),

        Responsive.isDesktop(context) || Responsive.isTablet(context)
            ? CommonUI.commonAppBarAction(
                text: appBarActionscontactus,
                isVisible: index == 3,
                onTap: () {
                  setState(() {
                    index = 3;
                    Responsive.isDesktop(context)
                        ? ctr.animateTo(
                            MediaQuery.of(context).size.height * 3.2,
                            duration: const Duration(milliseconds: 1500),
                            curve: Curves.easeInOut,
                          )
                        : Responsive.isTablet(context)
                            ? ctr.animateTo(
                                MediaQuery.of(context).size.height * 4.5,
                                duration: const Duration(milliseconds: 1500),
                                curve: Curves.easeInOut,
                              )
                            : ctr.animateTo(
                                MediaQuery.of(context).size.height * 3.23,
                                duration: const Duration(milliseconds: 1500),
                                curve: Curves.easeInOut,
                              );
                  });
                },
              )
            : CommonUI.commonAppBarAction(
                text: appBarActionscontactus,
                isVisible: index == 3,
                actionFontSize: 12.sp,
                horizontalPadding: 7,
                onTap: () {
                  setState(() {
                    index = 3;
                    Responsive.isDesktop(context)
                        ? ctr.animateTo(
                            MediaQuery.of(context).size.height * 3.2,
                            duration: const Duration(milliseconds: 1500),
                            curve: Curves.easeInOut,
                          )
                        : Responsive.isTablet(context)
                            ? ctr.animateTo(
                                MediaQuery.of(context).size.height * 4.5,
                                duration: const Duration(milliseconds: 1500),
                                curve: Curves.easeInOut,
                              )
                            : ctr.animateTo(
                                MediaQuery.of(context).size.height * 3.23,
                                duration: const Duration(milliseconds: 1500),
                                curve: Curves.easeInOut,
                              );
                  });
                },
              ),

        // CommonUI.commonAppBarAction(
        //   text: appBarActionscontactus,
        //   isVisible: index == 3,
        //   onTap: () {
        //     setState(() {
        //       index = 3;
        //       Responsive.isDesktop(context)
        //           ? ctr.animateTo(
        //               MediaQuery.of(context).size.height * 3.2,
        //               duration: const Duration(milliseconds: 1500),
        //               curve: Curves.easeInOut,
        //             )
        //           : Responsive.isTablet(context)
        //               ? ctr.animateTo(
        //                   MediaQuery.of(context).size.height * 4.5,
        //                   duration: const Duration(milliseconds: 1500),
        //                   curve: Curves.easeInOut,
        //                 )
        //               : ctr.animateTo(
        //                   MediaQuery.of(context).size.height * 3.23,
        //                   duration: const Duration(milliseconds: 1500),
        //                   curve: Curves.easeInOut,
        //                 );
        //     });
        //   },
        // ),

        Responsive.isDesktop(context) || Responsive.isTablet(context)
            ? const SizedBox(
                width: 20,
              )
            : Container()

        // const SizedBox(
        //   width: 20,
        // ),
      ]),
      body: ListView(
        controller: ctr,
        children: const [
          PageOneScreen(),
          PageTwoScreen(),
          PageThreeScreen(),
          PageFourScreen(),
        ],
      ),
    );
  }
}
