import 'package:flutter/material.dart';

class ProductGrit extends StatelessWidget {
  const ProductGrit({
    super.key, 
    required this.imageUrl, 
    required this.productName, 
    required this.productPrice, 
    required this.onTapCallback,
  });

  final String imageUrl;
  final String productName;
  final String productPrice;
  final VoidCallback onTapCallback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapCallback,
      child: Container(
        width: 100,
        height: 40,
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color.fromRGBO(255, 140, 149, 1),
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                imageUrl,
                width: double.infinity,
                height: 100,
                fit: BoxFit.cover,
              ),
              Text(
                productName,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Text(
                productPrice,
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
  }