import 'package:flutter/material.dart';

class RFormDivider extends StatelessWidget {
  const RFormDivider({
    super.key, 
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Divider(color: Colors.grey, thickness: 0.5, indent: 60, endIndent: 5,),
        Text(dividerText, style: Theme.of(context).textTheme.labelMedium,),
        Divider(color: Colors.grey, thickness: 0.5, indent: 5, endIndent: 60,),

        const SizedBox(height: 48,),
      ],
    );
  }
}