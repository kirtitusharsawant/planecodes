import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planecode/constants/image_constants.dart';
import 'package:planecode/constants/text_constants.dart';
import 'package:planecode/helpers/common_ui.dart';

class PageTwoTablet extends StatelessWidget {
  const PageTwoTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 2.0,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Image.asset(pageTwoDots),
          ),
          Positioned(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 45.sp,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: CommonUI.commonTitle(titletext: pageTwoTitle),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: CommonUI.commonDescription(
                      descriptiontext: pageTwoDescription),
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 70.sp, right: 70.sp, top: 60.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CommonUI.commonRectangleOne(
                          imagePath: webdevelopment,
                          containertitle: pageTwoContainerOneTitle,
                          containerdescription: pageTwoContainerOnedescription),
                      CommonUI.commonRectangleOne(
                          imagePath: mobiledevelopment,
                          containertitle: pageTwoContainerTwoTitle,
                          containerdescription: pageTwoContainerTwodescription),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.sp,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 70.sp,
                    right: 70.sp,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CommonUI.commonRectangleOne(
                          imagePath: uxDesign,
                          containertitle: pageTwoContainerThreeTitle,
                          containerdescription:
                              pageTwoContainerThreedescription),
                      CommonUI.commonRectangleOne(
                          imagePath: devopsServices,
                          containertitle: pageTwoContainerFourTitle,
                          containerdescription:
                              pageTwoContainerFourdescription),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.sp,
                ),
                Container(
                  margin: EdgeInsets.only(left: 70.sp, right: 70.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CommonUI.commonRectangleOne(
                          imagePath: testingServices,
                          containertitle: pageTwoContainerFiveTitle,
                          containerdescription:
                              pageTwoContainerFivedescription),
                      CommonUI.commonRectangleOne(
                          imagePath: dataEnginaaring,
                          containertitle: pageTwoContainerSixTitle,
                          containerdescription: pageTwoContainerSixdescription),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25.sp,
                ),
                Container(
                  margin: EdgeInsets.only(left: 70.sp, right: 70.sp),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CommonUI.commonRectangleOne(
                          imagePath: dataScience,
                          containertitle: pageTwoContainerSevenTitle,
                          containerdescription:
                              pageTwoContainerSevendescription),
                      CommonUI.commonRectangleOne(
                          imagePath: devopsServices,
                          containertitle: pageTwoContainerEightTitle,
                          containerdescription:
                              pageTwoContainerEightdescription),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
