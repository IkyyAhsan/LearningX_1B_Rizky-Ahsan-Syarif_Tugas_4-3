import 'package:flutter/material.dart';

class RSocialButtons extends StatelessWidget {
  const RSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(100),),
              child: IconButton(
                  onPressed: (){}, icon: const Image(
                  width: 24,
                  height: 24,
                  image: AssetImage('assets/logos/google.png')
                  ),
              ),
            ),
            const SizedBox(width: 16,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(100),
              ),
              child: IconButton(
                onPressed: (){}, 
                icon: const Image(
                  width: 16,
                  height: 16,
                  image: AssetImage('assets/logos/facebook.png')
                ),
              ),
            ),
          ],
        );
  }
}