import 'package:festiva_flutter/domain/model/artista.dart';
import 'package:flutter/material.dart';
import '../../theme/colors.dart';

class CardArtista extends StatelessWidget {
  final Artista artista;
  const CardArtista({
    super.key,
    required this.artista,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            artista.urlFoto,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          artista.nombre,
          style: const TextStyle(fontSize: 12, color: colorT1),
        )
      ],
    );
  }
}
