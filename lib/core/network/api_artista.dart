import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiArtista {
  final String baseUrl;

  ApiArtista({required this.baseUrl});

  Future<List<dynamic>> get() async {
    try {
      final url = Uri.parse('$baseUrl/artista/test');
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final List<dynamic> responseJson = json.decode(response.body);
        return responseJson;
      } else {
        throw Exception('Error al hacer la solicitud HTTP');
      }
    } catch (e) {
      throw Exception('Error al hacer la solicitud HTTP: $e');
    }
  }
}