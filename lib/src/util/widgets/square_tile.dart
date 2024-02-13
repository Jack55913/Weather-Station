import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  final Function()? signType;
  const SquareTile({
    super.key,
    required this.imagePath,
    required this.signType,
  });

  @override
  Widget build(BuildContext context) {
    return Bounceable(
                          onTap: () {},
      child: ElevatedButton(
        onPressed: signType,
        style: ButtonStyle(
          side: MaterialStateProperty.all(
            const BorderSide(
              color: Colors.white,
              width: 2,
            ),
          ),
          padding: MaterialStateProperty.all<EdgeInsets>(
            const EdgeInsets.all(30),
          ),
          shape: MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
            return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16));
          }),
          backgroundColor: MaterialStatePropertyAll<Color?>(Colors.grey[200]),
          // visualDensity: const VisualDensity(vertical: 2.0),
        ),
        child: Image.asset(
          imagePath,
          height: 40,
        ),
      ),
    );
  }
}
