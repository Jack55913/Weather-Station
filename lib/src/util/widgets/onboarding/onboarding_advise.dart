import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:okazawa/src/model/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class OnboardingAdvise extends StatelessWidget {
  const OnboardingAdvise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.bodySmall,
        children: [
          const TextSpan(
            text: 'Al iniciar sesión aceptas ',
          ),

          /// https://stackoverflow.com/questions/43583411/how-to-create-a-hyperlink-in-flutter-widget
          TextSpan(
            text: 'nuestros términos y condiciones y política de privacidad',
            style: TextStyle(
              color: yokohamagreen,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () => launchUrl(
                    Uri.parse('https://proyecto-miyotl.web.app/privacidad/'),
                    // forceWebView: true,
                  ),
          ),
          const TextSpan(
              text:
                  ', y aceptas recibir correos electrónicos con actualizaciones sobre el proyecto.'),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
