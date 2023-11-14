import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wisata_app/screens/dashboard_screen.dart';
import 'package:wisata_app/screens/login_screen.dart';

class SessionManager {
  static SessionManager? _instance;
  static SharedPreferences? _preferences;

  static Future<SessionManager> getInstance() async {
    if (_instance == null) {
      _instance = SessionManager();
    }

    if (_preferences == null) {
      _preferences = await SharedPreferences.getInstance();
    }

    return _instance!;
  }

  Future<void> isLogin(BuildContext context) async {
    await getInstance();
    bool isLogin = _preferences!.getBool('isLogin') ?? false;
    if (isLogin) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const DashboardScreen()),
        (route) => false,
      );
    }
  }

  Future<void> checkLoginStatus(BuildContext context) async {
    await getInstance();
    bool isLogin = _preferences!.getBool('isLogin') ?? false;

    if (!isLogin) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
        (route) => false,
      );
    }
  }

  Future<void> saveUserData(String email) async {
    await _preferences!.setBool('isLogin', true);
    await _preferences!.setString('email', email);
  }

  String? getEmail() {
    return _preferences!.getString('email');
  }

  getIsLogin() {
    return _preferences!.getBool('isLogin');
  }

  Future<void> clearUserData() async {
    await _preferences!.remove('isLogin');
    await _preferences!.remove('email');
    await _preferences!.clear();
  }
}
