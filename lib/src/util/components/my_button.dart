import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:okazawa/src/model/constants.dart';
 

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final MaterialStatePropertyAll<Color?>? color;

  const MyButton({
    Key? key,
    required this.onTap,
    required this.text,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Bounceable(
      onTap: () {},
      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
            const EdgeInsets.all(30),
          ),
          shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
            return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8));
          }),
          backgroundColor: color ?? MaterialStatePropertyAll<Color?>(yokohamagreen),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'FredokaOne',
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
