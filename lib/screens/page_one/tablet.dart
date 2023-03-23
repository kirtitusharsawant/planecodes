import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planecode/constants/colour_constants.dart';
import 'package:planecode/constants/image_constants.dart';
import 'package:planecode/constants/text_constants.dart';
import 'package:planecode/helpers/common_ui.dart';

class PageOneTablet extends StatelessWidget {
  const PageOneTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: blueColor,
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300.sp,
                width: 350.sp,
                child: Center(
                  child: Image.asset(pageOneImage),
                ),
              ),
              SizedBox(
                height: 25.sp,
              ),
              SizedBox(
                width: double.infinity,
                child: Container(
                  margin: EdgeInsets.only(left: 50.sp),
                  child: SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CommonUI.commonTitle(
                            titletext: pageOneTitle, color: darkwhiteColor),
                        CommonUI.commonAnimatedText(
                          stringList: [
                            TypewriterAnimatedText("Design Thinking"),
                            TypewriterAnimatedText("Clean Coding"),
                          ],
                          color: darkwhiteColor,
                        ),
                        SizedBox(
                          height: 10.sp,
                        ),
                        SizedBox(
                          width: 650.sp,
                          child: CommonUI.commonDescription(
                              descriptiontext: pageOnedescription,
                              color: darkwhiteColor),
                        ),
                        SizedBox(
                          height: 20.sp,
                        ),
                        CommonUI.commonElevatedButton(
                            buttontext: pageOneButton),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.asset(
                pageOneDots,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
