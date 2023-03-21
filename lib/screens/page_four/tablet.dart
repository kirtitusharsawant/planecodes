import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planecode/constants/colour_constants.dart';
import 'package:planecode/constants/text_constants.dart';
import 'package:planecode/helpers/common_ui.dart';

class PageFourTablet extends StatelessWidget {
  const PageFourTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkwhiteColor,
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
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
                mainAxisAlignment: MainAxisAlignment.center,
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
