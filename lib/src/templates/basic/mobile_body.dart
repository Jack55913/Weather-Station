import 'package:flutter/material.dart';
import 'package:okazawa/mar.dart';
// import 'package:okazawa/src/screens/historial.dart';
// import 'package:okazawa/src/screens/mobile/body_app.dart';
// import 'package:okazawa/src/screens/pages/quiz.dart';
// import 'package:okazawa/src/util/widgets/parallax/paralax_effect.dart';
import 'package:okazawa/src/util/components/my_navigationbar.dart';
import 'package:okazawa/src/util/components/tree/appbar.dart';
import 'package:okazawa/src/util/components/tree/drawer.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  bool isFabVisable = true;
  // NAVBAR

  int _selectedIndex = 0;
  void navigationBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

// Pages

  final List<Widget> _pages = [
    const Mar(), // HomePage
    const Mar(), // Descargar constancia
    const Mar(), // Revista Zea Mays
    const Mar() // Plan de Estudios
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: myAppBar,
      bottomNavigationBar: MyNavBar(
        onTabChange: (index) => navigationBar(index),
      ),
      drawer: const MyDrawer(),
      body: _pages[_selectedIndex],
    );
  }
}

class HomeMobilePage extends StatelessWidget {
  const HomeMobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        myAppBar,
        const SliverToBoxAdapter(child: Mar()),
      ],
    );
  }
}
