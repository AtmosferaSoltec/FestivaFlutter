import 'package:festiva_flutter/presentation/pages/menu_page.dart';
import 'package:festiva_flutter/presentation/theme/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: colorP1),
        useMaterial3: true,
      ),
      initialRoute: '/menu',
      routes: {
        '/menu': (context) => const MenuPage(),
      },
    );
  }
}
