import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:okazawa/src/model/constants.dart'; 

class MyNavBar extends StatelessWidget {
  void Function(int)? onTabChange;

  MyNavBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            GNav(
                textStyle: subtitleText,
                onTabChange: (value) => onTabChange!(value),
                color: Colors.grey[400], // Color de los iconos
                mainAxisAlignment: MainAxisAlignment.center,
                rippleColor:
                    Colors.white, // tab button ripple color when pressed
                hoverColor: Colors.grey, // tab button hover color
                activeColor: Colors.grey[800], // selected icon and text color
                tabBackgroundColor: Colors.white, // COLOR DE FONDO
                haptic: true, // haptic feedback
                tabBorderRadius: 24,
                curve: Curves.easeOutExpo, // tab animation curves
                duration:
                    const Duration(milliseconds: 900), // tab animation duration
                gap: 8, // the tab button gap between icon and text
                iconSize: 24, // tab button icon size
                tabActiveBorder: Border.all(color: Colors.grey, width: 3),
                tabs: const [
                  GButton(
                    icon: LineIcons.home,
                    text: 'Inicio',
                  ),
                  GButton(
                    icon: LineIcons.alternateTicket,
                    text: 'Ticket',
                  ),
                  GButton(
                    icon: LineIcons.book,
                    text: 'Zea Mays',
                  ),
                  GButton(
                    icon: LineIcons.gamepad,
                    text: 'Simulador',
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
