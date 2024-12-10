import 'package:festiva_flutter/presentation/pages/Home/components/category_chips.dart';
import 'package:festiva_flutter/presentation/providers/provider.dart';
import 'package:festiva_flutter/presentation/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoriasHome extends StatefulWidget {
  const CategoriasHome({super.key});

  @override
  State<CategoriasHome> createState() => _CategoriasHomeState();
}

class _CategoriasHomeState extends State<CategoriasHome> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<CategoriaProvider>(context, listen: false).listar();
    });
  }

  @override
  Widget build(BuildContext context) {
    final categoriaProvider = Provider.of<CategoriaProvider>(context);
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Categorias",
            style: Styles.Headline,
          ),
          categoriaProvider.isLoading
              ? const LinearProgressIndicator()
              : CategoryChips(
                  categories: categoriaProvider.categorias,
                ),
        ],
      ),
    );
  }
}
