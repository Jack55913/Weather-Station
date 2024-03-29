/// De https://github.com/miyotl/miyotl/blob/master/lib/widgets/empty_state.dart

import 'package:flutter/material.dart';
import 'package:okazawa/src/model/constants.dart'; 

class EmptyState extends StatelessWidget {
  final String text;
  final String? image;

  // ignore: use_key_in_widget_constructors
  const EmptyState(this.text, [this.image]);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (image != null)
            Image.asset(
              image!,
              width: MediaQuery.of(context).size.width * 0.8,
            ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Text(text, textAlign: TextAlign.center, style: headerBlack),
                // Image.asset(
                //   'assets/images/ajolote-triste.png',
                // ),
                Text(
                  '¡Inicia sesión para poder crear, editar o eliminar mediciones a la base de datos de la OMA!.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: yokohamagreen,
                    fontFamily: 'FredokaOne',
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
