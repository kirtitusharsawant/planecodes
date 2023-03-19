import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planecode/constants/image_constants.dart';
import 'package:planecode/constants/text_constants.dart';
import 'package:planecode/helpers/common_ui.dart';

class PageTwoDesktop extends StatelessWidget {
  const PageTwoDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          Positioned(
            child: Image.asset(pageTwoDots),
          ),
          Positioned(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 45.sp,
                ),
                CommonUI.commonTiltle(titletext: pageTwoTitle),
                Padding(
                  padding: EdgeInsets.only(left: 40.sp),
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
    ));
  }
}
