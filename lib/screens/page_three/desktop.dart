import 'package:flutter/material.dart';
import 'package:planecode/constants/colour_constants.dart';
import 'package:planecode/constants/image_constants.dart';
import 'package:planecode/constants/text_constants.dart';
import 'package:planecode/helpers/common_ui.dart';

class PageThreeDesktop extends StatelessWidget {
  const PageThreeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(pageThreeDots),
          ),
          Positioned(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CommonUI.commonTiltle(
                    titletext: pageThreeTitle, color: whiteColor),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: CommonUI.commonDescription(
                      descriptiontext: pageThreeDescription, color: whiteColor),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CommonUI.commonRectangle(),
                    const SizedBox(
                      width: 30,
                    ),
                    CommonUI.commonRectangle(),
                    const SizedBox(
                      width: 30,
                    ),
                    CommonUI.commonRectangle(),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CommonUI.commonRectangle(),
                    const SizedBox(
                      width: 30,
                    ),
                    CommonUI.commonRectangle(),
                    const SizedBox(
                      width: 30,
                    ),
                    CommonUI.commonRectangle(),
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
