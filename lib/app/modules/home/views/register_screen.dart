import 'package:flutter/material.dart';
import 'package:homework_4_3/app/modules/home/controllers/register_controller.dart';
import 'package:homework_4_3/app/modules/home/views/widgets/social_buttons.dart';
import 'package:iconsax/iconsax.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = registerController();
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // -- Header
              Text('Ayo buat akun anda', style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: 32,),

              // -- Form
              Column(
                children: [
                  TextFormField(
                      controller: controller.nameController(),
                    decoration: const InputDecoration(
                      labelText: 'Nama Lengkap',
                      border: OutlineInputBorder()
                    ),
                    validator: (value) {
                      if (value == null){
                        return 'Tidak boleh kosong';
                      } 
                      return null;
                    },
                  ),
                  const SizedBox(height: 16,),
                    TextFormField(
                      controller: controller.passwordController(),
                      decoration: InputDecoration(
                      labelText: 'Password',
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Iconsax.eye_slash))
                      ),
                      validator: (value) {
                        if (value == null){
                          return 'Tidak boleh kosong';
                        } 
                        return null;
                      },
                    ),
                    const SizedBox(height: 16,),
                    TextFormField(
                      controller: controller.verifPasswordController(),
                      decoration: InputDecoration(
                      labelText: 'Konfirmasi Password',
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Iconsax.eye_slash))
                      ),
                      validator: (value) {
                        if (value == null){
                          return 'Tidak boleh kosong';
                        } 
                        return null;
                      },
                    ),
                    const SizedBox(height: 32,),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => controller.registrationValidation(), 
                        style: ElevatedButton.styleFrom(backgroundColor: const Color.fromRGBO(255, 140, 149, 1)),
                        child: const Text('Buat Akun baru', style: TextStyle(color: Colors.white),)
                        ),
                    ),
                    const SizedBox(height: 12,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Sudah punya akun?', style: Theme.of(context).textTheme.labelMedium),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context,'/login');
                          },
                          child: const Text('Masuk', style: TextStyle(color: Colors.blue)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12,),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Divider(color: Colors.grey, thickness: 0.5, indent: 60, endIndent: 5,),
                        Text('Atau Masuk dengan', style: Theme.of(context).textTheme.labelMedium,),
                        Divider(color: Colors.grey, thickness: 0.5, indent: 5, endIndent: 60,),

                        const SizedBox(height: 48,),
                      ],
                    ),

                    // -- Footer
                    RSocialButtons(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}