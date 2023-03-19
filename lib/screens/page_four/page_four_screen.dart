import 'package:flutter/material.dart';
import 'package:planecode/helpers/responsive.dart';
import 'package:planecode/screens/page_four/desktop.dart';
import 'package:planecode/screens/page_four/mobile.dart';
import 'package:planecode/screens/page_four/tablet.dart';

class PageFourScreen extends StatelessWidget {
  const PageFourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile:PageFourMobile(),
      desktop: PageFourDesktop(),
      tablet: PageFourTablet(),
    );
  }
}