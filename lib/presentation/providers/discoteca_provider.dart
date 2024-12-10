import 'package:festiva_flutter/domain/repository/discoteca_repository.dart';
import 'package:flutter/material.dart';

class DiscotecaProvider extends ChangeNotifier {
  final DiscotecaRepository repo;

  DiscotecaProvider({required this.repo});
}
