import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planecode/constants/colour_constants.dart';
import 'package:planecode/constants/controller_constants.dart';
import 'package:planecode/constants/text_constants.dart';
import 'package:planecode/helpers/responsive.dart';

class CommonUI {
  CommonUI._();

  static PreferredSizeWidget commonWebAppBar(
      BuildContext context, List<Widget> actionWidget) {
    return PreferredSize(
      preferredSize: Responsive.isDesktop(context)
          ? Size.fromHeight(60.sp)
          : Responsive.isTablet(context)
              ? Size.fromHeight(110.sp)
              : Size.fromHeight(100.sp),
      child: Responsive(
        mobile: AppBar(
          centerTitle: true,
          backgroundColor: blueColor,
          elevation: 0,
          title: CommonUI.commonappBarTitle(text: appBarTitle),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: actionWidget,
            ),
          ),
        ),
        tablet: AppBar(
          centerTitle: true,
          backgroundColor: blueColor,
          elevation: 0,
          title: CommonUI.commonappBarTitle(text: appBarTitle),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(110.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: actionWidget,
            ),
          ),
        ),
        desktop: AppBar(
          backgroundColor: blueColor,
          title: CommonUI.commonappBarTitle(text: appBarTitle),
          elevation: 0,
          actions: actionWidget,
        ),
      ),
    );
  }

  static Widget commonappBarTitle({String? text}) {
    return Responsive(
      mobile: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: Text(
          text!,
          style: GoogleFonts.istokWeb(
            fontWeight: FontWeight.w700,
            fontSize: 20.sp,
            color: darkwhiteColor,
          ),
        ),
      ),
      tablet: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: Text(
          text,
          style: GoogleFonts.istokWeb(
            fontWeight: FontWeight.w700,
            fontSize: 30.sp,
            color: darkwhiteColor,
          ),
        ),
      ),
      desktop: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: Text(
          text,
          style: GoogleFonts.istokWeb(
            fontWeight: FontWeight.w500,
            fontSize: 30.sp,
            color: darkwhiteColor,
          ),
        ),
      ),
    );
  }

  static Widget commonAnimatedText(
      {List<AnimatedText>? stringList, Color? color}) {
    return Responsive(
        mobile: DefaultTextStyle(
          style: GoogleFonts.istokWeb(
            fontSize: 30.sp,
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
        ),
        tablet: DefaultTextStyle(
          style: GoogleFonts.istokWeb(
            fontSize: 38.sp,
            fontWeight: FontWeight.w400,
            color: color,
          ),
          child: AnimatedTextKit(
            repeatForever: true,
            pause: const Duration(seconds: 2),
            animatedTexts: stringList,
            onTap: () {
              print("Tap Event");
            },
          ),
        ),
        desktop: DefaultTextStyle(
          style: GoogleFonts.istokWeb(
            fontSize: 38.sp,
            fontWeight: FontWeight.w400,
            color: color,
          ),
          child: AnimatedTextKit(
            repeatForever: true,
            pause: const Duration(seconds: 2),
            animatedTexts: stringList,
            onTap: () {
              print("Tap Event");
            },
          ),
        ));
  }

  static Widget commonTitle({String? titletext, Color? color}) {
    return Responsive(
        mobile: Text(
          titletext!,
          textAlign: TextAlign.center,
          style: GoogleFonts.istokWeb(
            fontSize: 30.sp,
            wordSpacing: 1.3,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
        tablet: Text(
          titletext,
          style: GoogleFonts.istokWeb(
            fontSize: 35.sp,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
        desktop: Text(
          titletext,
          style: GoogleFonts.istokWeb(
            fontSize: 35.sp,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ));
  }

  static Widget commonDescriptionPageTwo(
      {String? descriptiontext, Color? color}) {
    return Responsive(
      mobile: Text(
        descriptiontext!,
        textAlign: TextAlign.center,
        style: GoogleFonts.istokWeb(
          fontSize: 13.sp,
          color: color,
        ),
      ),
      tablet: Text(
        descriptiontext,
        textAlign: TextAlign.center,
        style: GoogleFonts.istokWeb(
          fontSize: 18.sp,
          color: color,
        ),
      ),
      desktop: Text(
        descriptiontext,
        style: GoogleFonts.istokWeb(
          fontSize: 18.sp,
          color: color,
        ),
      ),
    );
  }

  static Widget commonDescriptionPageThree(
      {String? descriptiontext, Color? color}) {
    return Responsive(
      mobile: Text(
        descriptiontext!,
        textAlign: TextAlign.center,
        style: GoogleFonts.istokWeb(
          height: 1.4,
          fontSize: 13.sp,
          color: color,
        ),
      ),
      tablet: Text(
        descriptiontext,
        textAlign: TextAlign.center,
        style: GoogleFonts.istokWeb(
          fontSize: 18.sp,
          color: color,
        ),
      ),
      desktop: Text(
        descriptiontext,
        style: GoogleFonts.istokWeb(
          fontSize: 18.sp,
          color: color,
        ),
      ),
    );
  }

  static Widget commonDescriptionPageFour(
      {String? descriptiontext, Color? color}) {
    return Responsive(
      mobile: Text(
        descriptiontext!,
        textAlign: TextAlign.center,
        style: GoogleFonts.istokWeb(
          height: 1.4,
          fontSize: 13.sp,
          color: color,
        ),
      ),
      tablet: Text(
        descriptiontext,
        textAlign: TextAlign.center,
        style: GoogleFonts.istokWeb(
          fontSize: 18.sp,
          color: color,
        ),
      ),
      desktop: Text(
        descriptiontext,
        style: GoogleFonts.istokWeb(
          fontSize: 18.sp,
          color: color,
        ),
      ),
    );
  }

  static Widget commonDescription({String? descriptiontext, Color? color}) {
    return Responsive(
      mobile: Text(
        descriptiontext!,
        textAlign: TextAlign.center,
        style: GoogleFonts.istokWeb(
          fontSize: 16.sp,
          color: color,
        ),
      ),
      tablet: Text(
        descriptiontext!,
        textAlign: TextAlign.center,
        style: GoogleFonts.istokWeb(
          fontSize: 18.sp,
          color: color,
        ),
      ),
      desktop: Text(
        descriptiontext!,
        textAlign: TextAlign.start,
        style: GoogleFonts.istokWeb(
          fontSize: 18.sp,
          color: color,
        ),
      ),
    );
  }

  static Widget commonElevatedButton({
    required String buttontext,
    VoidCallback? ontap,
  }) {
    return Responsive(mobile: Obx(() {
      return SizedBox(
        height: 50.sp,
        width: 170.sp,
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
    }), tablet: Obx(() {
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
    }), desktop: Obx(() {
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
    }));
  }

  static Widget commonContainerTitle({String? containerTitle}) {
    return Responsive(
        mobile: Text(
          containerTitle!,
          style: GoogleFonts.istokWeb(
            fontWeight: FontWeight.w700,
            fontSize: 20.sp,
            color: whiteColor,
          ),
        ),
        tablet: Text(
          containerTitle,
          style: GoogleFonts.istokWeb(
            fontWeight: FontWeight.w700,
            fontSize: 20.sp,
            color: whiteColor,
          ),
        ),
        desktop: Text(
          containerTitle,
          style: GoogleFonts.istokWeb(
            fontWeight: FontWeight.w700,
            fontSize: 20.sp,
            color: whiteColor,
          ),
        ));
  }

  static Widget commonContainerDescription({String? containerdescription}) {
    return Responsive(
        mobile: Text(containerdescription!,
            style: GoogleFonts.istokWeb(
              fontWeight: FontWeight.w400,
              fontSize: 15.sp,
              color: whiteColor,
            )),
        tablet: Text(containerdescription,
            style: GoogleFonts.istokWeb(
              fontWeight: FontWeight.w400,
              fontSize: 15.sp,
              color: whiteColor,
            )),
        desktop: Text(containerdescription,
            style: GoogleFonts.istokWeb(
              fontWeight: FontWeight.w400,
              fontSize: 15.sp,
              color: whiteColor,
            )));
  }

  static Widget commonAppBarAction(
      {String? text, bool isVisible = false, VoidCallback? onTap}) {
    return Responsive(
      mobile: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            right: 10,
            left: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text!,
                style: GoogleFonts.istokWeb(
                  fontSize: 10.sp,
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
      ),
      tablet: InkWell(
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
                text,
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
      ),
      desktop: InkWell(
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
                text,
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
      ),
    );
  }

  static Widget commonBottomBarDescription(
      {String? descriptiontext, Color? color}) {
    return Responsive(
      mobile: Text(
        descriptiontext!,
        style: GoogleFonts.istokWeb(
          fontWeight: FontWeight.w700,
          fontSize: 32.sp,
          color: color,
        ),
      ),
      tablet: Text(
        descriptiontext,
        style: GoogleFonts.istokWeb(
          fontWeight: FontWeight.w700,
          fontSize: 32.sp,
          color: color,
        ),
      ),
      desktop: Text(
        descriptiontext,
        style: GoogleFonts.istokWeb(
          fontWeight: FontWeight.w700,
          fontSize: 32.sp,
          color: color,
        ),
      ),
    );
  }

  static Widget commonRoundedCircle() {
    return Responsive(
      mobile: Container(
        height: 5.sp,
        width: 5.sp,
        decoration:
            const BoxDecoration(color: darkgreyColor, shape: BoxShape.circle),
      ),
      tablet: Container(
        height: 100.sp,
        width: 100.sp,
        decoration:
            const BoxDecoration(color: darkgreyColor, shape: BoxShape.circle),
      ),
      desktop: Container(
        height: 100.sp,
        width: 100.sp,
        decoration:
            const BoxDecoration(color: darkgreyColor, shape: BoxShape.circle),
      ),
    );
  }

  static Widget commonRectangle() {
    return Responsive(
      mobile: Container(
          height: 200.sp,
          width: 250.sp,
          decoration: BoxDecoration(
            color: darkgreyColor,
            borderRadius: BorderRadius.circular(10),
          )),
      tablet: Container(
        height: 250.sp,
        width: 400.sp,
        decoration: BoxDecoration(
          color: darkgreyColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      desktop: Container(
          height: 250.sp,
          width: 350.sp,
          decoration: BoxDecoration(
            color: darkgreyColor,
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }

  static Widget commonRectangleOne(
      {String? imagePath,
      String? containertitle,
      String? containerdescription}) {
    return Responsive(
        mobile: Container(
          height: 180.sp,
          width: 260.sp,
          decoration: BoxDecoration(
            color: blueColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.sp,
                  width: 20.sp,
                  child: Image.asset(imagePath!),
                ),
                commonContainerTitle(containerTitle: containertitle),
                commonContainerDescription(
                    containerdescription: containerdescription),
              ],
            ),
          ),
        ),
        tablet: Container(
          height: 250.sp,
          width: 250.sp,
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
                SizedBox(
                  height: 20.sp,
                  width: 20.sp,
                  child: Image.asset(imagePath),
                ),
                commonContainerTitle(containerTitle: containertitle),
                commonContainerDescription(
                    containerdescription: containerdescription),
              ],
            ),
          ),
        ),
        desktop: Container(
          height: 250.sp,
          width: 250.sp,
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
                SizedBox(
                  height: 20.sp,
                  width: 20.sp,
                  child: Image.asset(imagePath),
                ),
                commonContainerTitle(containerTitle: containertitle),
                commonContainerDescription(
                    containerdescription: containerdescription),
              ],
            ),
          ),
        ));
  }

  static Widget commonBottomBar(
      {String? text, Color? color, String? descriptiontext}) {
    return Responsive(
      mobile: Container(
          height: 70.sp,
          width: double.infinity,
          color: pinkColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text!,
                style: GoogleFonts.istokWeb(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700,
                    color: darkwhiteColor),
              ),
              SizedBox(
                height: 2.sp,
              ),
              Text(
                descriptiontext!,
                style: GoogleFonts.istokWeb(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: darkwhiteColor,
                ),
              )
            ],
          )),
      tablet: Container(
          height: 100.sp,
          width: double.infinity,
          color: pinkColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: GoogleFonts.istokWeb(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w700,
                    color: darkwhiteColor),
              ),
              Text(
                descriptiontext,
                style: GoogleFonts.istokWeb(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                  color: darkwhiteColor,
                ),
              )
            ],
          )),
      desktop: Container(
        height: 80.sp,
        width: double.infinity,
        color: pinkColor,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Text(
                text,
                style: GoogleFonts.istokWeb(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.w700,
                    color: darkwhiteColor),
              ),
              const Spacer(),
              Text(
                descriptiontext,
                style: GoogleFonts.istokWeb(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w700,
                  color: darkwhiteColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
