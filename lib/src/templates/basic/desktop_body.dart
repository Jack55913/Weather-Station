import 'package:flutter/material.dart';
import 'package:okazawa/mar.dart';
// import 'package:okazawa/src/screens/web/body_web.dart';
import 'package:okazawa/src/util/components/tree/appbar.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: myWebAppBar, body: const Mar());
  }
}
