import 'package:flutter/material.dart';
import 'package:planecode/constants/colour_constants.dart';
import 'package:planecode/constants/text_constants.dart';
import 'package:planecode/helpers/common_ui.dart';
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
  var key1 = GlobalKey();
  var key2 = GlobalKey();
  var key3 = GlobalKey();
  var key4 = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueColor,
        title: CommonUI.commonappBarTitle(text: appBarTitle),
        elevation: 0,
        actions: [
          CommonUI.commonAppBarAction(
            text: appBarActions,
            isVisible: index == 0,
            onTap: () {
              setState(() {
                index = 0;
                Scrollable.ensureVisible(key1.currentContext!);
              });
            },
          ),
          CommonUI.commonAppBarAction(
            text: appBarActionsaboutus,
            isVisible: index == 1,
            onTap: () {
              setState(() {
                index = 1;
                Scrollable.ensureVisible(key2.currentContext!);
              });
            },
          ),
          CommonUI.commonAppBarAction(
            text: appBarActionsServices,
            isVisible: index == 2,
            onTap: () {
              setState(() {
                index = 2;
                Scrollable.ensureVisible(key3.currentContext!);
              });
            },
          ),
          CommonUI.commonAppBarAction(
            text: appBarActionscontactus,
            isVisible: index == 3,
            onTap: () {
              setState(() {
                index = 3;
                Scrollable.ensureVisible(key4.currentContext!);
              });
            },
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
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
      ),
    );
  }
}
