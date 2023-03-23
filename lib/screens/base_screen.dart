import 'package:flutter/material.dart';
import 'package:planecode/constants/text_constants.dart';
import 'package:planecode/helpers/common_ui.dart';
import 'package:planecode/helpers/responsive.dart';
import 'package:planecode/screens/page_four/page_four_screen.dart';
import 'package:planecode/screens/page_one/page_one_screen.dart';
import 'package:planecode/screens/page_three/page_three_screen.dart';
import 'package:planecode/screens/page_two/page_two_screen.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int index = 0;
  var key1 = GlobalKey();
  var key2 = GlobalKey();
  var key3 = GlobalKey();
  var key4 = GlobalKey();
  ScrollController ctr = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonUI.commonWebAppBar(context, [
        CommonUI.commonAppBarAction(
          text: appBarActions,
          isVisible: index == 0,
          onTap: () {
            setState(() {
              index = 0;
              Responsive.isDesktop(context)
                  ? ctr.animateTo(
                      0,
                      duration: const Duration(milliseconds: 1500),
                      curve: Curves.easeInOut,
                    )
                  : Responsive.isTablet(context)
                      ? ctr.animateTo(
                          0,
                          duration: const Duration(milliseconds: 1500),
                          curve: Curves.easeInOut,
                        )
                      : ctr.animateTo(
                          0,
                          duration: const Duration(milliseconds: 1500),
                          curve: Curves.easeInOut,
                        );
            });
          },
        ),
        CommonUI.commonAppBarAction(
          text: appBarActionsaboutus,
          isVisible: index == 1,
          onTap: () {
            setState(() {
              index = 1;
              Responsive.isDesktop(context)
                  ? ctr.animateTo(
                      800,
                      duration: const Duration(milliseconds: 1500),
                      curve: Curves.easeInOut,
                    )
                  : Responsive.isTablet(context)
                      ? ctr.animateTo(
                          800,
                          duration: const Duration(milliseconds: 1500),
                          curve: Curves.easeInOut,
                        )
                      : ctr.animateTo(
                          800,
                          duration: const Duration(milliseconds: 1500),
                          curve: Curves.easeInOut,
                        );
            });
          },
        ),
        CommonUI.commonAppBarAction(
          text: appBarActionsServices,
          isVisible: index == 2,
          onTap: () {
            setState(() {
              index = 2;
              Responsive.isDesktop(context)
                  ? ctr.animateTo(
                      1800,
                      duration: const Duration(milliseconds: 1500),
                      curve: Curves.easeInOut,
                    )
                  : Responsive.isTablet(context)
                      ? ctr.animateTo(
                          2400,
                          duration: const Duration(milliseconds: 1500),
                          curve: Curves.easeInOut,
                        )
                      : ctr.animateTo(
                          2350,
                          duration: const Duration(milliseconds: 1500),
                          curve: Curves.easeInOut,
                        );
            });
          },
        ),
        CommonUI.commonAppBarAction(
          text: appBarActionscontactus,
          isVisible: index == 3,
          onTap: () {
            setState(() {
              index = 3;
              // ctr.animateTo(
              //   3500,
              //   duration: const Duration(milliseconds: 1500),
              //   curve: Curves.easeInOut,
              // );
              Responsive.isDesktop(context)
                  ? ctr.animateTo(
                      2750,
                      duration: const Duration(milliseconds: 1500),
                      curve: Curves.easeInOut,
                    )
                  : Responsive.isTablet(context)
                      ? ctr.animateTo(
                          3500,
                          duration: const Duration(milliseconds: 1500),
                          curve: Curves.easeInOut,
                        )
                      : ctr.animateTo(
                          3500,
                          duration: const Duration(milliseconds: 1500),
                          curve: Curves.easeInOut,
                        );
            });
          },
        ),
        const SizedBox(
          width: 20,
        ),
      ]),
      body: ListView(
        controller: ctr,
        children: [
          PageOneScreen(
            key: key1,
          ),
          PageTwoScreen(
            key: key2,
          ),
          PageThreeScreen(
            key: key3,
          ),
          PageFourScreen(
            key: key4,
          ),
        ],
      ),
    );
  }
}
