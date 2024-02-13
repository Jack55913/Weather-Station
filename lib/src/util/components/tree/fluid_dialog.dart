import 'package:flutter/material.dart';
import 'package:fluid_dialog/fluid_dialog.dart';
import 'package:okazawa/mar.dart';
import 'package:okazawa/src/model/constants.dart';
// import 'package:okazawa/src/screens/settings/credits.dart';
// import 'package:okazawa/src/screens/settings/faq.dart';
// import 'package:okazawa/src/screens/settings/politics.dart';
// import 'package:okazawa/src/screens/settings/privacy.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

/// A simple example of a dialog
class InfoDialog extends StatelessWidget {
  const InfoDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Bounceable(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.share,
                  color: Colors.grey[600],
                ),
                title: Text(
                  'Compartir',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                  // style: drawerTextColor,
                ),
                iconColor: Theme.of(context).colorScheme.onSurface,
                onTap: () {
                  Share.share('olimpiadama.web.app',
                      subject:
                          '¡Hay que competir juntos en la Olimpiada Mexicana de Agronomía! mira, te paso el link para inscribirse:');
                },
              ),
            ),
            Bounceable(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.grey[600],
                ),
                title: Text(
                  'Enviar\nun correo',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                  // style: drawerTextColor,
                ),
                iconColor: Theme.of(context).colorScheme.onSurface,
                onTap: () {
                  launchUrl(
                    Uri.parse(
                        'mailto:delegadosoma@googlegroups.com?subject=Retroalimentación sobre la Olimpiada Mexicana de Agronomía'),
                  );
                },
              ),
            ),
            Bounceable(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.description_outlined,
                  color: Colors.grey[600],
                ),
                title: Text(
                  'Términos y Condiciones',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                  // style: drawerTextColor,
                ),
                iconColor: Theme.of(context).colorScheme.onSurface,
                onTap: () {
                  DialogNavigator.of(context).push(
                    FluidDialogPage(
                      // This dialog is shown in the center of the screen.
                      alignment: Alignment.center,
                      // Using a custom decoration for this dialog.
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Colors.white,
                      ),
                      builder: (context) => const Mar(),
                    ),
                  );
                },
              ),
            ),
            Bounceable(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.privacy_tip_outlined,
                  color: Colors.grey[600],
                ),
                title: Text(
                  'Políticas de Privacidad',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                  // style: drawerTextColor,
                ),
                iconColor: Theme.of(context).colorScheme.onSurface,
                onTap: () {
                  DialogNavigator.of(context).push(
                    FluidDialogPage(
                      // This dialog is shown in the center of the screen.
                      alignment: Alignment.center,
                      // Using a custom decoration for this dialog.
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Colors.white,
                      ),
                      builder: (context) => const Mar(),
                    ),
                  );
                },
              ),
            ),
            Bounceable(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.info_outline,
                  color: Colors.grey[600],
                ),
                title: Text(
                  'Acerca de',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
                iconColor: Theme.of(context).colorScheme.onSurface,
                onTap: () {
                  analytics.logEvent(name: 'open-about');
                  showAboutDialog(
                    applicationName: appName,
                    context: context,
                    applicationIcon: const CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage('assets/images/logo.png'),
                    ),
                    applicationLegalese: 'Con amor desde la UACh ❤️',
                    applicationVersion: 'versión inicial',
                    children: [
                      Bounceable(
                        onTap: () {},
                        child: ListTile(
                          leading: Icon(
                            Icons.people,
                            color: Colors.grey[600],
                          ),
                          title: const Text('Ver créditos'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Mar()),
                            );
                          },
                        ),
                      ),
                      Bounceable(
                        onTap: () {},
                        child: ListTile(
                          leading: Icon(
                            Icons.question_mark_rounded,
                            color: Colors.grey[600],
                          ),
                          title: const Text('Preguntas Frecuentes'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Mar()),
                            );
                          },
                        ),
                      ),
                      Bounceable(
                        onTap: () {},
                        child: ListTile(
                          leading: const Icon(
                            Ionicons.logo_facebook,
                            color: Colors.blue,
                          ),
                          title: const Text('Síguenos en Facebook'),
                          onTap: () {
                            analytics.logEvent(name: 'view-facebook');
                            launchUrl(
                              Uri.parse(
                                  'https://www.facebook.com/olimpiadama/'),
                              mode: LaunchMode.externalApplication,
                            );
                          },
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const Divider(),
            Text(
              'Copyright © OMA 2023',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
            Text(
              'Todos los derechos reservados',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
