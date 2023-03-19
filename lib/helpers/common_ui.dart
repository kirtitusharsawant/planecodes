import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planecode/constants/colour_constants.dart';
import 'package:planecode/constants/controller_constants.dart';

class CommonUI {
  CommonUI._();

  static Widget commonappBarTitle({String? text}) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20),
      child: Text(
        text!,
        style: GoogleFonts.istokWeb(
          fontWeight: FontWeight.w700,
          fontSize: 40.sp,
          color: darkwhiteColor,
        ),
      ),
    );
  }

  static Widget commonAnimatedText(
      {List<AnimatedText>? stringList, Color? color}) {
    return DefaultTextStyle(
      style: GoogleFonts.istokWeb(
        fontSize: 38.sp,
        fontWeight: FontWeight.w400,
        color: color,
      ),
      child: AnimatedTextKit(
        repeatForever: true,
        pause: const Duration(seconds: 2),
        animatedTexts: stringList!,
        onTap: () {
          print("Tap Event");
        },
      ),
    );
  }

  static Widget commonTitle({String? titletext, Color? color}) {
    return Text(
      titletext!,
      style: GoogleFonts.istokWeb(
        fontSize: 35.sp,
        fontWeight: FontWeight.w400,
        color: color,
      ),
    );
  }

  static Widget commonDescription({String? descriptiontext, Color? color}) {
    return Text(
      descriptiontext!,
      style: GoogleFonts.istokWeb(
        fontSize: 18.sp,
        color: color,
      ),
    );
  }

  static Widget commonElevatedButton({
    required String buttontext,
    VoidCallback? ontap,
  }) {
    return Obx(() {
      return SizedBox(
        height: 50.sp,
        width: 180.sp,
        child: ElevatedButton(
          onHover: (value) {
            value
                ? commonController.setOnHoverToTrue()
                : commonController.setOnHoverToFalse();
          },
          style: ElevatedButton.styleFrom(
            primary:
                commonController.onHover.value ? darkwhiteColor : blueColor,
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: whiteColor, width: 3),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {},
          child: Text(
            buttontext,
            style: GoogleFonts.istokWeb(
              fontWeight: FontWeight.w700,
              fontSize: 20.sp,
              color: commonController.onHover.value ? blueColor : whiteColor,
            ),
          ),
        ),
      );
    });
  }

  static Widget commonContainerTitle({String? containerTitle}) {
    return Text(
      containerTitle!,
      style: GoogleFonts.istokWeb(
        fontWeight: FontWeight.w700,
        fontSize: 20.sp,
        color: whiteColor,
      ),
    );
  }

  static Widget commonContainerDescription({String? containerdescription}) {
    return Text(containerdescription!,
        style: GoogleFonts.istokWeb(
          fontWeight: FontWeight.w400,
          fontSize: 15.sp,
          color: whiteColor,
        ));
  }

  static Widget commonAppBarAction(
      {String? text, bool isVisible = false, VoidCallback? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          right: 20,
          left: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text!,
              style: GoogleFonts.istokWeb(
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: darkwhiteColor,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            isVisible
                ? Container(
                    height: 3,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: whiteColor,
                    ),
                  )
                : Container(
                    height: 3,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Colors.transparent,
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  static Widget commonBottomBarDescription({String? descriptiontext}) {
    return Text(
      descriptiontext!,
      style: GoogleFonts.istokWeb(
        fontWeight: FontWeight.w700,
        fontSize: 32.sp,
        color: darkwhiteColor,
      ),
    );
  }

  static Widget commonRoundedCircle() {
    return Container(
      height: 100.sp,
      width: 100.sp,
      decoration:
          const BoxDecoration(color: darkgreyColor, shape: BoxShape.circle),
    );
  }

  static Widget commonRectangle() {
    return Container(
        height: 250.sp,
        width: 400.sp,
        decoration: BoxDecoration(
          color: darkgreyColor,
          borderRadius: BorderRadius.circular(10),
        ));
  }

  static Widget commonRectangleOne(
      {String? imagePath,
      String? containertitle,
      String? containerdescription}) {
    return Container(
      height: 250,
      width: 250,
      decoration: BoxDecoration(
        color: blueColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imagePath!),
            // Text(containertitle!,
            // style: ,
            // ),
            commonContainerTitle(containerTitle: containertitle),
            // Text(containerdescription!)
            commonContainerDescription(
                containerdescription: containerdescription),
          ],
        ),
      ),
    );
  }

  static Widget commonBottomBar({String? text, Color? color}) {
    return Container(
        height: 130.sp,
        width: double.infinity,
        color: pinkColor,
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Text(
            text!,
            style: GoogleFonts.istokWeb(
                fontSize: 48.sp,
                fontWeight: FontWeight.w700,
                color: darkwhiteColor),
          ),
        ));
  }
}
