import 'package:flutter/material.dart';
import 'package:planecode/constants/colour_constants.dart';
import 'package:planecode/constants/text_constants.dart';
import 'package:planecode/helpers/common_ui.dart';

class PageFourDesktop extends StatelessWidget {
  const PageFourDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonUI.commonTiltle(titletext: pageFourTitle, color: blackColor),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: CommonUI.commonDescription(
                descriptiontext: pageFourDescription, color: blackColor),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            margin: const EdgeInsets.only(left: 50),
            child: Row(
              children: [
                CommonUI.commonRoundedCircle(),
                const SizedBox(
                  width: 20,
                ),
                CommonUI.commonRoundedCircle(),
                const SizedBox(
                  width: 20,
                ),
                CommonUI.commonRoundedCircle(),
                const SizedBox(
                  width: 20,
                ),
                CommonUI.commonRoundedCircle(),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          Spacer(),
          CommonUI.commonBottomBar(
              text: pageFourBottomBarTitle, color: darkwhiteColor),
        ],
      ),
    );
  }
}
