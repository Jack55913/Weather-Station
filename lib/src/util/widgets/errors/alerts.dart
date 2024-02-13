import 'dart:js';
import 'package:flutter/material.dart';

// var close = ScaffoldMessenger.of(context).hideCurrentMaterialBanner();

var alertLogIn = ScaffoldMessenger.of(context as BuildContext).showMaterialBanner(
                            MaterialBanner(
                                overflowAlignment: OverflowBarAlignment.end,
                                content: const Text(
                                    'Método de inicio de sesión en construcción'),
                                leading: const Icon(Icons.pan_tool_rounded),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      ScaffoldMessenger.of(context as BuildContext)
                                          .hideCurrentMaterialBanner();
                                    },
                                    child: const Text('Ok'),
                                  ),
                                ]),
                          );


