import 'package:flutter/material.dart';
import 'package:mamio/screens/login.dart';
import 'package:mamio/screens/menu.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'MAMIO',
        theme: ThemeData(
          useMaterial3: true,
          primaryColor: Color.fromARGB(255, 116, 9, 56), // Menyesuaikan warna utama
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Color.fromARGB(255, 175, 23, 64), // Menyesuaikan warna utama
            secondary: Color.fromARGB(255, 204, 43, 82), // Menyesuaikan warna sekunder
          ),
        ),
        home: const LoginPage(),
      ),
    );
  }
}