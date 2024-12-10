import 'package:festiva_flutter/presentation/pages/Artistas/artistas_page.dart';
import 'package:festiva_flutter/presentation/pages/Discotecas/discotecas_page.dart';
import 'package:festiva_flutter/presentation/pages/Eventos/eventos_page.dart';
import 'package:festiva_flutter/presentation/pages/Home/home_page.dart';
import 'package:festiva_flutter/presentation/pages/Preferencias/preferencias_page.dart';
import 'package:festiva_flutter/presentation/theme/colors.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const EventosPage(),
    const HomePage(),
    const DiscotecasPage(),
    const PreferenciasPage(),
    const ArtistasPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.event), label: "Eventos"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_bar), label: "Discotecas"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Preferencias"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: "Artistas"),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          showSelectedLabels: false,
          // Oculta la etiqueta del ítem seleccionado
          showUnselectedLabels: false,
          backgroundColor: colorFondo3,
          selectedItemColor: colorP1,
          unselectedItemColor: colorT3,
        ),
        backgroundColor: colorFondo1,
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ));
  }
}
