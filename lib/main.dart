import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:smartagri/route.dart';
import 'package:smartagri/screens/distributor_accepted.dart';
import 'package:smartagri/screens/distributor_home.dart';
import 'package:smartagri/screens/distributor_request.dart';
import 'package:smartagri/screens/farmer_accepted.dart';
import 'package:smartagri/screens/farmer_home.dart';
import 'package:smartagri/screens/farmer_markettrends.dart';
import 'package:smartagri/screens/farmer_request.dart';
import 'package:smartagri/screens/farmer_vehicals.dart';
import 'package:smartagri/screens/loading_screen.dart';
import 'package:smartagri/screens/login_screen.dart';
import 'package:smartagri/services/auth_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _authService = AuthService();
  bool _isRoleFarmer = false;

  Future<void> _getRole() async {
    try {
      final role = await _authService.isFarmer();
      if (mounted) {
        setState(() {
          _isRoleFarmer = role;
        });
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getRole();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: FutureBuilder<bool>(
        future: _authService.isTokenExpired(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData && !snapshot.data!) {
              if(_isRoleFarmer){
                return const MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Smart Giri Mobile',
                
                initialRoute: '/farmer_home',
                onGenerateRoute: Routes.generateRoute,
              );
              }
              else{
                return const MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Smart Giri Mobile',
                
                initialRoute: '/distributor_home',
                onGenerateRoute: Routes.generateRoute,
              );
              }
            } else {
              return const MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Smart Giri Mobile',
                
                initialRoute: '/login',
                onGenerateRoute: Routes.generateRoute,
              );
            }
          } else {
            // Show a loading indicator while checking token expiration
            return Container(
              color: Colors.white,

              height: double.infinity,
              width: double.infinity,
              child: LoadingAnimationWidget.fallingDot(
                color: Colors.green,
                size: 60,
              ),
            );
          }
        },
      ),
    );
  }
}
