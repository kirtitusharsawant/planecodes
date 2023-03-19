import 'package:flutter/material.dart';
import 'package:planecode/constants/colour_constants.dart';
import 'package:planecode/constants/image_constants.dart';
import 'package:planecode/constants/text_constants.dart';
import 'package:planecode/helpers/common_ui.dart';

class PageOneDesktop extends StatelessWidget {
  const PageOneDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      appBar: AppBar(
        backgroundColor: blueColor,
        title: CommonUI.commonappBarTitle(text: appBarTitle),
        elevation: 0,
        actions: [
          CommonUI.commonAppBarAction(text: appBarActions),
          CommonUI.commonAppBarAction(text: appBarActionsaboutus),
          CommonUI.commonAppBarAction(text: appBarActionsServices),
          CommonUI.commonAppBarAction(text: appBarActionscontactus),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Positioned(
                  top: 0,
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    // height: MediaQuery.of(context).size.height * 0.7,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 440,
                          width: 850,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonUI.commonTiltle(
                                  titletext: pageOneTitle,
                                  color: darkwhiteColor),
                              CommonUI.commonTiltle(
                                  titletext: pageOneTitleTwo,
                                  color: darkwhiteColor),
                              CommonUI.commonDescription(
                                  descriptiontext: pageOnedescription,
                                  color: darkwhiteColor),
                              SizedBox(
                                height: 20,
                              ),
                              CommonUI.commonElevatedButton(
                                  buttontext: pageOneButton),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 350,
                          width: 400,
                          child: Image.asset(pageOneImage),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    child: Image.asset(pageOneDots),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
