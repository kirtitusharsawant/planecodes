import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planecode/constants/colour_constants.dart';
import 'package:planecode/constants/image_constants.dart';
import 'package:planecode/constants/text_constants.dart';
import 'package:planecode/helpers/common_ui.dart';

class PageThreeTablet extends StatelessWidget {
  const PageThreeTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: blueColor,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 1.5,
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 45.sp,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: CommonUI.commonTitle(
                        titletext: pageThreeTitle, color: whiteColor),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: CommonUI.commonDescription(
                        descriptiontext: pageThreeDescription,
                        color: whiteColor),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
