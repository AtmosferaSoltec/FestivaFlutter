import 'package:festiva_flutter/domain/model/artista.dart';
import 'package:festiva_flutter/domain/usecase/use_case.dart';

import 'package:flutter/material.dart';

class ArtistaProvider extends ChangeNotifier {
  final GetAllArtistasUseCase getAllArtistasUseCase;

  ArtistaProvider({required this.getAllArtistasUseCase});

  List<Artista> _artistas = [];
  List<Artista> get artistas => _artistas;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  Future<void> listar() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      _artistas = await getAllArtistasUseCase();
    } catch (error) {
      _errorMessage = 'Failed to load user';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
