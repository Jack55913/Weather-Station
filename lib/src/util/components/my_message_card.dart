import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

class MessageCard extends StatefulWidget {
  final String title;
  final Color color;
  final Color? textcolors;
  const MessageCard({
    super.key,
    required this.title,
    required this.color,
    this.textcolors,
  });

  @override
  State<MessageCard> createState() => _MessageCardState();
}

class _MessageCardState extends State<MessageCard> {
  void function() async {}

  @override
  Widget build(BuildContext context) {
    return Bounceable(
                          onTap: () {},
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: ClipRRect(
          // borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              Container(
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
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            child: AutoSizeText(
                              widget.title,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: widget.textcolors ?? Colors.black,
                                fontSize: 36,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
