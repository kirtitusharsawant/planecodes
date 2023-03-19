import 'package:flutter/material.dart';
import 'package:planecode/helpers/responsive.dart';
import 'package:planecode/screens/page_one/desktop.dart';
import 'package:planecode/screens/page_one/mobile.dart';
import 'package:planecode/screens/page_one/tablet.dart';

class PageOneScreen extends StatelessWidget {
  const PageOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: PageOneMobile(),
      desktop: PageOneDesktop(),
      tablet: PageOneTablet(),
    );
  }
}
