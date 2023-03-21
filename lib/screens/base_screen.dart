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
  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.width);
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
              });
            },
          ),
          CommonUI.commonAppBarAction(
            text: appBarActionsaboutus,
            isVisible: index == 1,
            onTap: () {
              setState(() {
                index = 1;
              });
            },
          ),
          CommonUI.commonAppBarAction(
            text: appBarActionsServices,
            isVisible: index == 2,
            onTap: () {
              setState(() {
                index = 2;
              });
            },
          ),
          CommonUI.commonAppBarAction(
            text: appBarActionscontactus,
            isVisible: index == 3,
            onTap: () {
              setState(() {
                index = 3;
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
          children: const [
            PageOneScreen(),
            PageTwoScreen(),
            PageThreeScreen(),
            PageFourScreen(),
          ],
        ),
      ),
    );
  }
}
