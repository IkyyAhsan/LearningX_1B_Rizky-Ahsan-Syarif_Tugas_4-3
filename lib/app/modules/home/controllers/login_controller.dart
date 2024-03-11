import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with StateMixin {
  final nameController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  void setNameController(String value) => nameController.value.text = value;
  void setPasswordController(String value) => passwordController.value.text = value;

  void loginValidation(){
    final String name = nameController.value.text;
    final String password = passwordController.value.text;
    
    if (name.isEmpty || password.isEmpty) {
      Get.snackbar('Kesalahan!', 'Nama atau password yang anda masukkan salah.', backgroundColor: Colors.red, colorText: Colors.white);
    } else if (password.length < 6){
      Get.snackbar('Kesalahan!', 'Panjang Password minimal 6 karakter.', backgroundColor: Colors.orange, colorText: Colors.white);
    } else {
      Get.snackbar('Login Berhasil!', 'Anda telah berhasil login.', backgroundColor: Colors.green, colorText: Colors.white);
      Get.toNamed('/home');
    }
  }
}