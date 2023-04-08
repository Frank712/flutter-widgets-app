import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI Controls')),
      body: const _UIControlsView(),
    );
  }
}

class _UIControlsView extends StatefulWidget {
  const _UIControlsView();

  @override
  State<_UIControlsView> createState() => _UIControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UIControlsViewState extends State<_UIControlsView> {
  bool isDeveloper = true;
  Transportation selectedTranportation = Transportation.car;
  bool wantsBreakFast = false;
  bool wantsLunch = false;
  bool wanstDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          value: isDeveloper,
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales'),
          onChanged: (value) => setState(() {
            isDeveloper = !isDeveloper;
          }),
        ),
        ExpansionTile(
          title: const Text('Tranportation vehicle'),
          subtitle: Text('$selectedTranportation'),
          children: [
            RadioListTile(
              title: const Text('By car'),
              subtitle: const Text('Viajar por carro'),
              value: Transportation.car,
              groupValue: selectedTranportation,
              onChanged: (value) => setState(() {
                selectedTranportation = Transportation.car;
              }),
            ),
            RadioListTile(
              title: const Text('By boat'),
              subtitle: const Text('Viajar por bote'),
              value: Transportation.boat,
              groupValue: selectedTranportation,
              onChanged: (value) => setState(() {
                selectedTranportation = Transportation.boat;
              }),
            ),
            RadioListTile(
              title: const Text('By plane'),
              subtitle: const Text('Viajar por avión'),
              value: Transportation.plane,
              groupValue: selectedTranportation,
              onChanged: (value) => setState(() {
                selectedTranportation = Transportation.plane;
              }),
            ),
            RadioListTile(
              title: const Text('By submarino'),
              subtitle: const Text('Viajar por submarino'),
              value: Transportation.submarine,
              groupValue: selectedTranportation,
              onChanged: (value) => setState(() {
                selectedTranportation = Transportation.submarine;
              }),
            ),
          ],
        ),
        CheckboxListTile(
          title: const Text('Incluir desayuno'),
          value: wantsBreakFast,
          onChanged: (value) => setState(() {
            wantsBreakFast = !wantsBreakFast;
          }),
        ),
        CheckboxListTile(
          title: const Text('Incluir lunch'),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = !wantsLunch;
          }),
        ),
        CheckboxListTile(
          title: const Text('Incluir cena'),
          value: wanstDinner,
          onChanged: (value) => setState(() {
            wanstDinner = !wanstDinner;
          }),
        ),
      ],
    );
  }
}
