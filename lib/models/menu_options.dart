import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  // setear las variables del menú.
  // GET
  final String route;
  final IconData icon;
  final String name;
  final Widget screens;

  MenuOption({
    // obteniendo el valor de las variables.
    // SET
    required this.route,
    required this.icon,
    required this.name,
    required this.screens,
  });
}
