import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planecode/constants/colour_constants.dart';
import 'package:planecode/constants/image_constants.dart';

class CommonUI {
  CommonUI._();

  // static Widget commonThings(){}

  static Widget commonappBarTitle({String? text}) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20),
      child: Text(
        text!,
        style: GoogleFonts.istokWeb(
          fontWeight: FontWeight.w700,
          fontSize: 48.sp,
          color: darkwhiteColor,
        ),
      ),
    );
  }

  static Widget commonTiltle({String? titletext, Color? color}) {
    return Padding(
      padding: EdgeInsets.only(left: 40.sp),
      child: Text(titletext!,
          style: GoogleFonts.istokWeb(
            fontSize: 48.sp,
            fontWeight: FontWeight.w400,
            color: color,
          )),
    );
  }

  static Widget commonDescription({String? descriptiontext, Color? color}) {
    return Text(descriptiontext!,
        style: GoogleFonts.istokWeb(
          fontSize: 24.sp,
          fontWeight: FontWeight.w400,
          color: color,
        ));
  }

  static Widget commonElevatedButton({
    required String buttontext,
    VoidCallback? ontap,
  }) {
    return SizedBox(
      height: 60,
      width: 200,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: blueColor,
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
            color: whiteColor,
          ),
        ),
      ),
    );
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

  static Widget commonAppBarAction({String? text}) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Text(
            text!,
            style: GoogleFonts.istokWeb(
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
              color: darkwhiteColor,
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Container(
            height: 4,
            width: 100,
            color: whiteColor,
          ),
        ],
      ),
    );
  }

  static Widget commonBottomBarDescription(BuildContext context,
      {String? descriptiontext}) {
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
      decoration: BoxDecoration(color: darkgreyColor, shape: BoxShape.circle),
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
      child: Row(
        children: [],
      ),
    );
  }
}
