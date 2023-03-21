import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planecode/constants/image_constants.dart';
import 'package:planecode/constants/text_constants.dart';
import 'package:planecode/helpers/common_ui.dart';

class PageTwoMobile extends StatelessWidget {
  const PageTwoMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 2.4,
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
                Padding(
                  padding: EdgeInsets.only(
                      left: 20.sp, right: 20.sp, top: 20.sp, bottom: 10.sp),
                  child: CommonUI.commonTitle(titletext: pageTwoTitle),
                ),
                CommonUI.commonDescriptionPageTwo(
                    descriptiontext: pageTwoDescription),
                Container(
                  margin: EdgeInsets.only(top: 30.sp),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CommonUI.commonRectangleOne(
                          imagePath: webdevelopment,
                          containertitle: pageTwoContainerOneTitle,
                          containerdescription: pageTwoContainerOnedescription),
                      SizedBox(
                        height: 25.sp,
                      ),
                      CommonUI.commonRectangleOne(
                          imagePath: mobiledevelopment,
                          containertitle: pageTwoContainerTwoTitle,
                          containerdescription: pageTwoContainerTwodescription),
                      SizedBox(
                        height: 25.sp,
                      ),
                      CommonUI.commonRectangleOne(
                          imagePath: uxDesign,
                          containertitle: pageTwoContainerThreeTitle,
                          containerdescription:
                              pageTwoContainerThreedescription),
                      SizedBox(
                        height: 25.sp,
                      ),
                      CommonUI.commonRectangleOne(
                          imagePath: devopsServices,
                          containertitle: pageTwoContainerFourTitle,
                          containerdescription:
                              pageTwoContainerFourdescription),
                      SizedBox(
                        height: 25.sp,
                      ),
                      CommonUI.commonRectangleOne(
                          imagePath: testingServices,
                          containertitle: pageTwoContainerFiveTitle,
                          containerdescription:
                              pageTwoContainerFivedescription),
                      SizedBox(
                        height: 25.sp,
                      ),
                      CommonUI.commonRectangleOne(
                          imagePath: dataEnginaaring,
                          containertitle: pageTwoContainerSixTitle,
                          containerdescription: pageTwoContainerSixdescription),
                      SizedBox(
                        height: 25.sp,
                      ),
                      CommonUI.commonRectangleOne(
                          imagePath: dataScience,
                          containertitle: pageTwoContainerSevenTitle,
                          containerdescription:
                              pageTwoContainerSevendescription),
                      SizedBox(
                        height: 25.sp,
                      ),
                      CommonUI.commonRectangleOne(
                          imagePath: devopsServices,
                          containertitle: pageTwoContainerEightTitle,
                          containerdescription:
                              pageTwoContainerEightdescription),
                      SizedBox(
                        height: 25.sp,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
