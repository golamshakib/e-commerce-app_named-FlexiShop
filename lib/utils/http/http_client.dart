import 'dart:convert';

import 'package:http/http.dart' as http;

class YHttpHelper {
  // -- A P I   B A S E   U R L
  /// Replace with your API base URL
  static const String _baseurl = 'https://your-api-base-url.com';

  // -- A P I   G E T   R E Q U E S T
  /// Helper Method to make a GET request
  static Future<Map<String, dynamic>> get (String endpoint) async {
    final response = await http.get(Uri.parse('$_baseurl/$endpoint'));
    return _handleResponse(response);
  }

  // -- A P I   P O S T   R E Q U E S T
  /// Helper Method to make a POST request
  static Future<Map<String, dynamic>> post (String endpoint, dynamic data) async {
    final response = await http.post(
      Uri.parse('$_baseurl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  // -- A P I   P U T   R E Q U E S T
  /// Helper Method to make a PUT request
  static Future<Map<String, dynamic>> put (String endpoint, dynamic data) async {
    final response = await http.put(
      Uri.parse('$_baseurl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  // -- A P I   D E L E T E   R E Q U E S T
  /// Helper Method to make a DELETE request
  static Future<Map<String, dynamic>> delete (String endpoint) async {
    final response = await http.delete(Uri.parse('$_baseurl/$endpoint'));
    return _handleResponse(response);
  }

  /// _handleResponse Method
  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }

}
