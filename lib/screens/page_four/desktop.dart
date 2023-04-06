import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planecode/constants/colour_constants.dart';
import 'package:planecode/constants/image_constants.dart';
import 'package:planecode/constants/text_constants.dart';
import 'package:planecode/helpers/common_ui.dart';

class PageFourDesktop extends StatelessWidget {
  const PageFourDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkwhiteColor,
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 45.sp,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: CommonUI.commonTitle(
                  titletext: pageFourTitle, color: blackColor),
            ),
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
                  CommonUI.commonRoundedCircle(imagePath: elixir),
                  const SizedBox(
                    width: 20,
                  ),
                  CommonUI.commonRoundedCircle(imagePath: flutter),
                  const SizedBox(
                    width: 20,
                  ),
                  CommonUI.commonRoundedCircle(imagePath: node),
                  const SizedBox(
                    width: 20,
                  ),
                  CommonUI.commonRoundedCircle(imagePath: python),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            const Spacer(),
            CommonUI.commonBottomBar(
                text: pageFourBottomBarTitle,
                color: darkwhiteColor,
                descriptiontext: pageFourBottomBarDescription),
          ],
        ),
      ),
    );
  }
}
