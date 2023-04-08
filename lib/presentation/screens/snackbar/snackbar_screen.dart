import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    final snackbar = SnackBar(
      content: const Text('Hello world!!!'),
      action: SnackBarAction(label: 'Ok', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text(
            'Veniam ullamco sunt occaecat irure commodo pariatur. Sunt do veniam adipisicing do mollit et elit. Sint non ad sit aute laboris commodo elit ad quis fugiat ut. Minim quis officia deserunt laboris aliqua sit et ea cupidatat in ipsum quis quis. Commodo proident irure amet sit aliqua labore.'),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(
              onPressed: () => context.pop(), child: const Text('Aceptar'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SnackBars y Diálogos')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
            onPressed: () {
              showAboutDialog(context: context, children: [
                const Text(
                    'Esse ex ex dolor nostrud amet incididunt ad dolore veniam enim deserunt excepteur ad. Enim dolore culpa sint occaecat. Voluptate culpa non enim fugiat pariatur labore eiusmod. Aute occaecat eu nostrud qui ut anim magna. Id et labore culpa amet incididunt proident. Cupidatat amet officia non sunt sit labore incididunt exercitation.')
              ]);
            },
            child: const Text('Licencias usadas'),
          ),
          FilledButton.tonal(
            onPressed: () => openDialog(context),
            child: const Text('Mostrar diálogo'),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.remove_red_eye_outlined),
        label: const Text('Mostrar snackbar'),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}
