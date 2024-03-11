import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homework_4_3/app/modules/home/controllers/login_controller.dart';
import 'package:iconsax/iconsax.dart';

class RLoginForm extends StatelessWidget {
  const RLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = LoginController();
    return Column(
      children: [
        const SizedBox(height: 48,),
        TextFormField(
          controller: controller.nameController(),
          decoration: const InputDecoration(
            labelText: 'Nama',
            border: OutlineInputBorder()
          ),
        ),
        const SizedBox(height: 16,),
          TextFormField(
            controller: controller.passwordController(),
            decoration: InputDecoration(
            labelText: 'Password',
            border: const OutlineInputBorder(),
            suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Iconsax.eye_slash))
            ),
          ),
          const SizedBox(height: 32,),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.loginValidation(), 
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(255, 140, 149, 1)
              ),
              child: const Text('Login', style: TextStyle(color: Colors.white),),
            ),
          ),
          const SizedBox(height: 16,),
          // -- Daftar Akun
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(onPressed: () => Get.toNamed('/register'), child: const Text('Buat Akun baru', style: TextStyle(color: Colors.black)),)
          ),
          Divider(
            thickness: 2,
          ),
          const SizedBox(width: 32,),
          
      ],
    );
  }
}