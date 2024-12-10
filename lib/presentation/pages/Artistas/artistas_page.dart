import 'package:festiva_flutter/presentation/theme/colors.dart';
import 'package:festiva_flutter/presentation/widgets/cards/card.dart';
import 'package:flutter/material.dart';

class ArtistasPage extends StatelessWidget {
  const ArtistasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Artistas'),
      ),
      body: Column(
        children: [CardArtista()],
      ),
      backgroundColor: colorFondo1,
    );
  }
}
