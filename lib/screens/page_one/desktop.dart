import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:planecode/constants/colour_constants.dart';
import 'package:planecode/constants/image_constants.dart';
import 'package:planecode/constants/text_constants.dart';
import 'package:planecode/helpers/common_ui.dart';

class PageOneDesktop extends StatelessWidget {
  const PageOneDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: blueColor,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            left: 0,
            child: SizedBox(
              width: double.infinity,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 440,
                      width: 850,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CommonUI.commonTitle(
                              titletext: pageOneTitle, color: darkwhiteColor),
                          CommonUI.commonTitle(
                              titletext: pageOneTitleTwo,
                              color: darkwhiteColor),
                          CommonUI.commonDescription(
                              descriptiontext: pageOnedescription,
                              color: darkwhiteColor),
                          const SizedBox(
                            height: 20,
                          ),
                          CommonUI.commonElevatedButton(
                              buttontext: pageOneButton),
                        ],
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 350,
                      width: 400,
                      child: Image.asset(pageOneImage),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.asset(pageOneDots),
            ),
          )
        ],
      ),
    );
  }
}
