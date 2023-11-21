import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wisata_app/common/base_url.dart';
import 'package:wisata_app/helper/session_manager.dart';

class AuthService {
  Future<Map<String, dynamic>> login(String email, String password) async {
    final response = await http.post(
      Uri.parse(BaseURL.urlLogin),
      body: {'email': email, 'password': password},
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      await SessionManager.saveData(
          data['acessToken'], data['data']['name'], data['data']['email']);
      return {'success': true, 'message': 'Login berhasil'};
    } else {
      return {'success': false, 'message': 'Login gagal'};
    }
  }

  Future<Map<String, dynamic>> logout() async {
    final accessToken = await SessionManager.getToken();
    final response = await http.post(
      Uri.parse(BaseURL.urlLogout),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
    );
    if (response.statusCode == 200) {
      await SessionManager.clearUserData();
      return {'success': true, 'message': 'Logout berhasil'};
    } else {
      return {'success': false, 'message': 'Logout gagal'};
    }
  }

  Future<Map<String, dynamic>> register(String email, String password,
      String confirmPassword, String name) async {
    final response = await http.post(
      Uri.parse(BaseURL.urlRegister),
      body: {
        'email': email,
        'password': password,
        'confirmPassword': confirmPassword,
        'name': name,
      },
    );
    final Map<String, dynamic> data = json.decode(response.body);
    if (response.statusCode == 201) {
      return {'success': true, 'message': 'Register berhasil'};
    } else {
      return {'success': false, 'message': data['message']};
    }
  }
}
