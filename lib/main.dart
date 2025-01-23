import 'package:flutter/material.dart';
import 'package:flutter_freiwillig_app/screens/auth_screen.dart';
import 'package:flutter_freiwillig_app/screens/home_page_screen.dart';
import 'package:flutter_freiwillig_app/services/auth_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Könüllülər',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FutureBuilder<bool>(
          future: _authService.isTokenValid(),
          builder: (ctx, snapshot) {
            if (snapshot.hasData && snapshot.data == true) {
              return const MyHomePage();
            } else {
              return const AuthScreen();
            }
          }),
    );
  }
}


//