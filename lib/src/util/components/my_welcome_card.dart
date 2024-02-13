import 'package:flutter/material.dart';
import 'package:okazawa/src/util/components/my_button.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

class WelcomeCard extends StatefulWidget {
  final String title;
  final String subtitle;
  final Color color;
  const WelcomeCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  @override
  State<WelcomeCard> createState() => _WelcomeCardState();
}

class _WelcomeCardState extends State<WelcomeCard> {
  void function() async {}

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: ClipRRect(
        // borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            Bounceable(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: widget.color,
                  border: const Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            child: AutoSizeText(
                              maxLines: 2,
                              widget.title,
                              style: const TextStyle(
                                fontFamily: 'FredokaOne',
                                color: Colors.black,
                                fontSize: 64,
                                // fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            child: AutoSizeText(
                              widget.subtitle,
                              style: const TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // const SizedBox(
                      //   height: 5,
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8, top: 5),
                        child: MyButton(
                          color: const MaterialStatePropertyAll<Color?>(
                              Colors.black),
                          text: "Registrarse",
                          onTap: function,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
