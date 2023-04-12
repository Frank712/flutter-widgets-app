import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Riverpod Counter',
    subtitle: 'Introduction to Riverpod',
    link: '/riverpod-counter',
    icon: Icons.countertops_rounded
  ),
  MenuItem(
    title: 'Botones',
    subtitle: 'Varios botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Tajetas',
    subtitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItem(
    title: 'Progress Indicators',
    subtitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: 'Snackbar',
    subtitle: 'Indicadores en pantall',
    link: '/snackbars',
    icon: Icons.info_outline,
  ),
  MenuItem(
    title: 'Animated Container',
    subtitle: 'Statefull widget animated',
    link: '/animated',
    icon: Icons.check_box_outline_blank_rounded,
  ),
  MenuItem(
    title: 'UI controls + Tiles',
    subtitle: 'A beautiful control series of Flutter',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined,
  ),
  MenuItem(
    title: 'App intro',
    subtitle: 'Tutorial introduction',
    link: '/tutorial',
    icon: Icons.accessible_sharp,
  ),
  MenuItem(
    title: 'Infinite Scroll and Pull',
    subtitle: 'Inifinite list and pull to refresh',
    link: '/infinite',
    icon: Icons.list_alt_rounded,
  ),
  MenuItem(
    title: 'Theme Changer',
    subtitle: 'Change application theme',
    link: '/theme-changer',
    icon: Icons.palette_outlined,
  ),
];
