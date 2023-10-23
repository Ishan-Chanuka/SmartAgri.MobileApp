// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class loadingscreen extends StatefulWidget {
  const loadingscreen({super.key});

  @override
  State<loadingscreen> createState() => _loadingscreenState();
}

class _loadingscreenState extends State<loadingscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              color: Colors.white,
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 280,
                    ),
                    Container(
                      child: const Image(
                        image: AssetImage("images/Logo.png"),
                        height: 200,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}