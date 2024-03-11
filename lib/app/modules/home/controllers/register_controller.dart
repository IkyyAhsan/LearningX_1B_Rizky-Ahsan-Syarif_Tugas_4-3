import 'package:flutter/material.dart';
import 'package:get/get.dart';

class registerController extends GetxController with StateMixin{
  final nameController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final verifPasswordController = TextEditingController().obs;

  void setNameController(String value) => nameController.value.text = value;
  void setPasswordController(String value) => nameController.value.text = value;
  void setVerifPasswordController(String value) => nameController.value.text = value;

  void registrationValidation(){
    final String name = nameController.value.text;
    final String password = nameController.value.text;
    final String verifPassword = nameController.value.text;

    if (name.isEmpty || password.isEmpty || verifPassword.isEmpty) {
      Get.snackbar('Kesalahan!', 'Nama atau password yang anda masukkan salah', backgroundColor: Colors.red, colorText: Colors.white);
    } else if (password != verifPassword){
      Get.snackbar('Kesalahan', 'Password yang anda masukkan tidak sama', backgroundColor: Colors.red, colorText: Colors.white);
    } else {
      Get.snackbar('Login Berhasil!', 'Anda telah berhasil login', backgroundColor: Colors.green, colorText: Colors.white);
      Get.toNamed('/login');
    }
  }
}