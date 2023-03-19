import 'package:flutter/material.dart';
import 'package:planecode/helpers/responsive.dart';
import 'package:planecode/screens/page_three/desktop.dart';
import 'package:planecode/screens/page_three/mobile.dart';
import 'package:planecode/screens/page_three/tablet.dart';

class PageThreeScreen extends StatelessWidget {
  const PageThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile:PageThreeMobile(),
      desktop: PageThreeDesktop(),
      tablet: PageThreeTablet(),
    );
  }
}