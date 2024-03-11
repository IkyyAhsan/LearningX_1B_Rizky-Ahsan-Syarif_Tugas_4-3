import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const String successAnimation = "assets/animations/1709969684645.json";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 140, 149, 1),
        title: const Text('Kamariati Cosmetic', style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Pembayaran berhasil!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                  color: Colors.black,
                ),
              ),
              Lottie.asset(
                successAnimation,
                width: 300,
                height: 300,
              ),
              const Text(
                'Pesanan anda akan segera dikirimkan, silahkan tunggu',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 80),
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () => Get.toNamed('/home'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(255, 140, 149, 1),
                    foregroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: const Text('OK'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}