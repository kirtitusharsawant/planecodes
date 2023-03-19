import 'package:flutter/material.dart';
import 'package:planecode/constants/image_constants.dart';
import 'package:planecode/constants/text_constants.dart';
import 'package:planecode/helpers/common_ui.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // PageOneScreen(),
            // PageTwoScreen(),
            // PageThreeScreen(),
            // PageFourScreen(),
            // PageFiveScreen(),

            CommonUI.commonDescription(descriptiontext: pageTwoDescription),
            SizedBox(
              height: 20,
            ),
            CommonUI.commonRoundedCircle(),
            SizedBox(
              height: 20,
            ),
            CommonUI.commonRectangle(),
            SizedBox(
              height: 20,
            ),
            CommonUI.commonRectangleOne(
                imagePath: webdevelopment,
                containertitle: pageTwoContainerOneTitle,
                containerdescription: pageTwoContainerOnedescription),
            const SizedBox(
              height: 20,
            ),

            CommonUI.commonElevatedButton(buttontext: "COntact us"),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
