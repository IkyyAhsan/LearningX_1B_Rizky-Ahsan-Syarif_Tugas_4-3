import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homework_4_3/app/modules/home/views/widgets/form_divider.dart';
import 'package:homework_4_3/app/modules/home/views/widgets/login_form.dart';
import 'package:homework_4_3/app/modules/home/views/widgets/login_header.dart';
import 'package:homework_4_3/app/modules/home/views/widgets/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 56, left: 24, right: 24, bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // -- Header
              RLoginHeader(),

              // -- Form
              RLoginForm(),

              // -- Divider
              RFormDivider(dividerText: 'Atau Masuk dengan'.capitalize!,),
              const SizedBox(width: 32,),

              // -- Footer
              RSocialButtons(),
            ],
          ),
          ),
      ),
    );
  }
}