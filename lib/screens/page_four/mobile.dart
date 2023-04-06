import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planecode/constants/colour_constants.dart';
import 'package:planecode/constants/image_constants.dart';
import 'package:planecode/constants/text_constants.dart';
import 'package:planecode/helpers/common_ui.dart';

class PageFourMobile extends StatelessWidget {
  const PageFourMobile({super.key});

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
              height: 15.sp,
            ),
            CommonUI.commonTitle(titletext: pageFourTitle, color: blackColor),
            SizedBox(
              height: 10.sp,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.sp, right: 10.sp),
              child: CommonUI.commonDescriptionPageFour(
                  descriptiontext: pageFourDescription, color: blackColor),
            ),
            SizedBox(
              height: 30.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CommonUI.commonRoundedCircle(imagePath: elixir),
                CommonUI.commonRoundedCircle(imagePath: flutter),
              ],
            ),
            SizedBox(
              height: 30.sp,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CommonUI.commonRoundedCircle(imagePath: node),
                CommonUI.commonRoundedCircle(imagePath: python),
              ],
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
