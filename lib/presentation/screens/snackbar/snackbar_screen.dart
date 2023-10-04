import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

//Mostrar snackbars
  void showCustomSnackbar(BuildContext context) {
    final snackbar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'OK!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  //Mostrar dialogo
  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('¿Estás seguro?'),
        content: const Text(
            'Anim duis Lorem ex ad ut sint commodo ex laborum ut. Ullamco eu nisi sunt commodo laborum id officia velit. Adipisicing ullamco nostrud culpa aliqua consequat tempor aliqua aute. Amet duis consectetur exercitation culpa ex consequat voluptate. Ad cillum cupidatat Lorem nostrud fugiat aliquip consequat.'),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(
              onPressed: () => context.pop(), child: const Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Diálogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Aliqua est commodo amet est Lorem dolor exercitation officia dolor. Exercitation consequat cillum sit ex nisi anim irure ex mollit occaecat ipsum voluptate ut. Incididunt minim consectetur magna labore Lorem voluptate elit et. Laborum cillum id Lorem exercitation amet reprehenderit id commodo proident Lorem officia nostrud mollit. Sint consectetur fugiat quis veniam velit nisi adipisicing est tempor commodo aute excepteur. Reprehenderit tempor laboris ea elit commodo. Duis excepteur aute ad ullamco elit aliquip labore ea enim cillum est do adipisicing.'),
                  ]);
                },
                child: const Text('Licencias usadas')),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: const Text('Mostrar dialogo'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
