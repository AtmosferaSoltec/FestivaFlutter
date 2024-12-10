import 'package:festiva_flutter/presentation/providers/provider.dart';
import 'package:festiva_flutter/presentation/widgets/cards/card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeArtistas extends StatefulWidget {
  const HomeArtistas({super.key});

  @override
  State<HomeArtistas> createState() => _HomeArtistasState();
}

class _HomeArtistasState extends State<HomeArtistas> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<ArtistaProvider>(context, listen: false).listar();
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ArtistaProvider>(context);
    return provider.isLoading
        ? const LinearProgressIndicator()
        : SizedBox(
            height: 140,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: provider.artistas.length,
                separatorBuilder: (context, index) => const SizedBox(width: 8),
                itemBuilder: (context, index) {
                  final artista = provider.artistas[index];
                  return CardArtista(artista: artista);
                }),
          );
  }
}
