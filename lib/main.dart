import 'package:festiva_flutter/data/di/injector.dart';
import 'package:festiva_flutter/presentation/pages/menu_page.dart';
import 'package:festiva_flutter/presentation/providers/provider.dart';
import 'package:festiva_flutter/presentation/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  setup();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => getIt<ArtistaProvider>()),
      ChangeNotifierProvider(create: (_) => getIt<DiscotecaProvider>()),
      ChangeNotifierProvider(create: (_) => getIt<CategoriaProvider>()),
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
