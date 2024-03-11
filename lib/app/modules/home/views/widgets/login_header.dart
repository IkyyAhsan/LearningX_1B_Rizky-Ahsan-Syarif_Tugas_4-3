import 'package:flutter/material.dart';

class RLoginHeader extends StatelessWidget {
  const RLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(
          height: 150,
          image: AssetImage('assets/logos/saraswati-splash-logo-white 1.png'),
          ),
          Text('Selamat Datang', style: Theme.of(context).textTheme.headlineMedium,),
          const SizedBox(height: 8,),
          Text('Temukan rahasia kecantikan anda!', style: Theme.of(context).textTheme.bodyMedium,),
      ],
    );
  }
}