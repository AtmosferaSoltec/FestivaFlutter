import 'package:festiva_flutter/data/di/injector.dart';
import 'package:festiva_flutter/presentation/pages/menu_page.dart';
import 'package:festiva_flutter/presentation/providers/artista_provider.dart';
import 'package:festiva_flutter/presentation/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  setup();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => getIt<ArtistaProvider>()),
    ],
    child: const MyApp(),
  ));
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
