import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planecode/constants/colour_constants.dart';
import 'package:planecode/constants/image_constants.dart';
import 'package:planecode/constants/text_constants.dart';
import 'package:planecode/helpers/common_ui.dart';

class PageThreeMobile extends StatelessWidget {
  const PageThreeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: blueColor,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 2,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Image.asset(pageThreeDots),
              ),
              Positioned(
                  child: Column(
                children: [
                  SizedBox(
                    height: 19.sp,
                  ),
                  CommonUI.commonTitle(
                      titletext: pageThreeTitle, color: whiteColor),
                  SizedBox(
                    height: 10.sp,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 11.sp, right: 11.sp),
                    child: CommonUI.commonDescriptionPageThree(
                        descriptiontext: pageThreeDescription,
                        color: whiteColor),
                  ),
                  SizedBox(
                    height: 22.sp,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CommonUI.commonRectangle(),
                      SizedBox(
                        height: 22.sp,
                      ),
                      CommonUI.commonRectangle(),
                      SizedBox(
                        height: 22.sp,
                      ),
                      CommonUI.commonRectangle(),
                      SizedBox(
                        height: 22.sp,
                      ),
                      CommonUI.commonRectangle(),
                      SizedBox(
                        height: 22.sp,
                      ),
                      CommonUI.commonRectangle(),
                      SizedBox(
                        height: 22.sp,
                      ),
                      CommonUI.commonRectangle(),
                    ],
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
