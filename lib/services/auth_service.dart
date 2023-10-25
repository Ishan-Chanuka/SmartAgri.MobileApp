import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:smartagri/constants/constans.dart';

class AuthService {
  AuthService._privateConstructor();

  static final AuthService _instance = AuthService._privateConstructor();

  factory AuthService() {
    return _instance;
  }

  Future<Map<String, dynamic>> login(String email, String password) async {
  try {
    final url = Uri.parse('$baseUrl/api/Account/login');
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode({'email': email, 'password': password});

    final response = await http.post(url, headers: headers, body: body);

    print("response ${response}");

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      final bool success = responseData['success'];

      if (success) {
        final Map<String, dynamic> data = responseData['data'];
        final String token = data['token'];
        final String userRole = data['role'];
        final String regCode = data['reistrationCode'];
        final bool isLocation = data['isLocationConfirm'];

        try {
          final prefs = await SharedPreferences.getInstance();
          await prefs.setString('token', token);
          await prefs.setString('role', userRole);
          await prefs.setString('reistrationCode', regCode);
          await prefs.setBool('isLocationConfirm', isLocation);
        } catch (e) {
          throw Exception('Error getting shared preferences: $e');
        }

        return data;
      } else {
        throw Exception('Login failed: ${responseData['message']}');
      }
    } else {
      throw Exception('Failed to login: ${response.statusCode}');
    }
  } catch (e) {
    throw Exception('Failed to login: $e');
  }
}
  

  Future<void> logout(BuildContext context) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove('token');
      await prefs.remove('userRole');
      await prefs.remove('firstName');
      await prefs.remove('lastName');
      await prefs.remove('email');
    } catch (e) {
      throw Exception('Error removing shared preferences: $e');
    }

    // ignore: use_build_context_synchronously
    Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
  }

  Future<String> getTokenFromPrefs() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final String? token = prefs.getString('token');
      return token ?? ''; // return an empty string if token is null
    } catch (e) {
      throw Exception('Error while getting token: $e');
    }
  }

  Future<String> getUserRoleFromPrefs() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final String? role = prefs.getString('role');
      return role ?? ''; // return an empty string if token is null
    } catch (e) {
      throw Exception('Error while getting user role: $e');
    }
  }

  Future<String> getUserNameFromPrefs() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final String? name = prefs.getString('firstName');
      return name ?? ''; // return an empty string if token is null
    } catch (e) {
      throw Exception('Error while getting user name: $e');
    }
  }

    Future<String> getUserEmailFromPrefs() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final String? email = prefs.getString('email');
      return email ?? ''; // return an empty string if token is null
    } catch (e) {
      throw Exception('Error while getting user email: $e');
    }
  }

  Future<bool> isTokenExpired() async {
    try {
      final token = await getTokenFromPrefs();
      if (token != null && token.isNotEmpty) {
        bool exp = Jwt.isExpired(token);
        return exp;
      }
    } catch (e) {
      throw Exception('Error while checking token expiration: $e');
    }
    return true; // default to true if token is null or empty
  }

  Future<bool> isFarmer() async {
    try {
      final role = await getUserRoleFromPrefs();
      if (role.isNotEmpty) {
        if (role == 'SuperAdmin') {
          return true;
        }
        return false;
      }
    } catch (e) {
      throw Exception('Error while checking is admin: $e');
    }
    return false;
  }

  Future<String> getUserName() async {
    try {
      final name = await getUserNameFromPrefs();
      if (name != null && name.isNotEmpty) {
        return name;
      }
      return '';
    } catch (e) {
      throw Exception('Error while getting user name: $e');
    }
  }


    Future<String> getUserEmail() async {
    try {
      final email = await getUserEmailFromPrefs();
      if (email != null && email.isNotEmpty) {
        return email;
      }
      return '';
    } catch (e) {
      throw Exception('Error while getting user name: $e');
    }
  }

  
}