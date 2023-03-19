import 'package:flutter/material.dart';
import 'package:planecode/helpers/responsive.dart';
import 'package:planecode/screens/page_two/desktop.dart';
import 'package:planecode/screens/page_two/mobile.dart';
import 'package:planecode/screens/page_two/tablet.dart';

class PageTwoScreen extends StatelessWidget {
  const PageTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: PageTwoMobile(),
      desktop: PageTwoDesktop(),
      tablet: PageTwoTablet(),
    );
  }
}