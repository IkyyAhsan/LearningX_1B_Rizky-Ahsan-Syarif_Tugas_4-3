import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homework_4_3/app/modules/home/views/checkout_screen.dart';
import 'package:homework_4_3/app/modules/home/views/home_screen.dart';
import 'package:homework_4_3/app/modules/home/views/login_screen.dart';
import 'package:homework_4_3/app/modules/home/views/register_screen.dart';
import 'package:homework_4_3/app/modules/home/views/success_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My App',
      initialRoute: '/login',
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/login', page: () => const LoginScreen()),
        GetPage(name: '/register', page: () => const RegisterScreen()),
        GetPage(name: '/home', page: () => const HomeScreen()),
        GetPage(name: '/checkout', page: () => const CheckoutScreen()),
        GetPage(name: '/success', page: () => const SuccessScreen()),
      ],
    );
  }
}