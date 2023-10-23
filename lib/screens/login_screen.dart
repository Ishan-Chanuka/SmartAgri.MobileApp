// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:smartagri/screens/farmer_home.dart';
import 'package:smartagri/services/auth_service.dart';
import 'colors.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  final _authService = AuthService();

  bool _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  bool _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  Future<void> _handleLogin() async {
    if (_validateEmail(_emailController.text) &&
        _validatePassword(_passwordController.text)) {
      try {
        await _authService.login(
            _emailController.text, _passwordController.text);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Login successful!",
                style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.green,
          ),
        );
        // Navigate to login page
        Navigator.pushReplacementNamed(context, '/home');
      } catch (e) {
        // Signup failed, show error message or handle the error
        print(e);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Login failed!"),
            backgroundColor: Colors.red,
          ),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Email and password is required!"),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var orientation, size, height, width;

    orientation = MediaQuery.of(context).orientation;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 120),
            Container(
              height: 150,
              width: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/Logo.png'),
                ),
              ),
            ),
            const SizedBox(height: 26),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Email',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: _emailController,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      
                      border: OutlineInputBorder(
                        
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Password',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: _passwordController,
                    textAlign: TextAlign.left,
                    obscureText: true,
                    decoration: InputDecoration(
                      //hintText: 'Enter your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                 
                ],
              ),
            ),
            InkWell(
              onTap: () {
                _handleLogin();
              },
              child: Container(
                width: 340,
                decoration: BoxDecoration(
                  color: AppColors.kMainColor,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15,),
          ],
        ),
      ),
    );
  }
}
