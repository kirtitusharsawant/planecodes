import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  @override
  Widget build(BuildContext context) {
    // print(MediaQuery.of(context).size.width);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueColor,
        title: CommonUI.commonappBarTitle(text: appBarTitle),
        elevation: 0,
        actions: [
          CommonUI.commonAppBarAction(text: appBarActions, isVisible: true),
          CommonUI.commonAppBarAction(text: appBarActionsaboutus),
          CommonUI.commonAppBarAction(text: appBarActionsServices),
          CommonUI.commonAppBarAction(text: appBarActionscontactus),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            PageOneScreen(),
            // PageTwoScreen(),
            // PageThreeScreen(),
            // PageFourScreen(),
          ],
        ),
      ),
    );
  }
}
