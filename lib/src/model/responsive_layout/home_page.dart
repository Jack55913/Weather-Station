import 'package:flutter/material.dart';
import 'package:okazawa/src/templates/basic/desktop_body.dart';
import 'package:okazawa/src/templates/basic/mobile_body.dart';
import 'package:okazawa/src/templates/responsive_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileBody: MobileScaffold(),
      // tabletBody: TabletScaffold(),
      desktopBody: DesktopScaffold(),
    );
  }
}
