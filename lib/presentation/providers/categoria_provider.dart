import 'dart:ffi';

import 'package:festiva_flutter/domain/model/categoria.dart';
import 'package:festiva_flutter/domain/repository/repository.dart';
import 'package:flutter/material.dart';

class CategoriaProvider extends ChangeNotifier {
  CategoriaRepository repo;

  CategoriaProvider({required this.repo});

  bool isLoading = false;
  List<Categoria> categorias = [];

  listar() async {
    isLoading = true;
    notifyListeners();
    try {
      final list = await repo.findAll();
      categorias = list;
      notifyListeners();
    } catch (e) {
      print(e);
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
