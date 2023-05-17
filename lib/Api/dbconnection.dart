import 'package:http/http.dart' as http;

class DatabaseHelper {
  static const String _baseUrl = 'http://172.17.6.253/'; // ganti dengan domain Anda
  static const String _apiPath = '/php/dbconnection.php'; // ganti dengan path file PHP Anda

  static Future<String> getData(String query) async {
    final response = await http.post(
      Uri.parse('$_baseUrl$_apiPath'),
      body: {'query': query},
    );

    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
