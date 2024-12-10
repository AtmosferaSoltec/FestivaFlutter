import 'package:festiva_flutter/presentation/providers/artista_provider.dart';
import 'package:festiva_flutter/presentation/theme/colors.dart';
import 'package:festiva_flutter/presentation/widgets/cards/card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ArtistasPage extends StatefulWidget {
  const ArtistasPage({super.key});

  @override
  State<ArtistasPage> createState() => _ArtistasPageState();
}

class _ArtistasPageState extends State<ArtistasPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<ArtistaProvider>(context, listen: false).listar();
    });
  }

  @override
  Widget build(BuildContext context) {
    final artistaProvider = Provider.of<ArtistaProvider>(context);
    return Scaffold(
      backgroundColor: colorFondo1,
      body: SafeArea(
        child: Center(
          child: artistaProvider.isLoading
              ? const CircularProgressIndicator()
              : GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 1,
                  ),
                  itemCount: artistaProvider.artistas.length,
                  itemBuilder: (context, index) {
                    final artista = artistaProvider.artistas[index];
                    return CardArtista(
                      artista: artista,
                    );
                  }),
        ),
      ),
    );
  }
}
