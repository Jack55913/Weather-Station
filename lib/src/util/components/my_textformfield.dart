// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:okazawa/src/model/constants.dart'; 

class MyTextFormField extends StatelessWidget {
  // final controller;
  final Icon icon;
  final TextInputType textInputType;
  final String hintText;
  final String helperText;
  final onChanged;
  final initialValue;
  final onEditingComplete;
  final controller;
  final focusNode;
  final suffixIcon;
  const MyTextFormField(
      {Key? key,
      required this.icon,
      required this.textInputType,
      required this.onChanged,
      required this.hintText,
      required this.helperText,
      this.suffixIcon,
      this.initialValue,
      this.focusNode,
      this.onEditingComplete,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          autofocus: true,
          controller: controller,
          focusNode: focusNode,
          onEditingComplete: onEditingComplete,
          enableSuggestions: true,
          autocorrect: true,
          initialValue: initialValue,
          cursorColor: yokohamagreen,
          style: const TextStyle(
            fontSize: 16,
            fontFamily: 'FredokaOne',
          ),
          textAlign: TextAlign.left,
          decoration: InputDecoration(
            prefixIconColor: Colors.grey,
            iconColor: yokohamagreen,
            hoverColor: Colors.white,
            focusColor: Theme.of(context).colorScheme.background,
            suffixIcon: suffixIcon,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            fillColor: Colors.grey.shade200,
            filled: true,
            icon: CircleAvatar(
              backgroundColor: Colors.white,
              child: icon,
            ),
            helperText: helperText,
            hintText: hintText,
          ),
          onChanged: onChanged,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          keyboardType: textInputType,
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
