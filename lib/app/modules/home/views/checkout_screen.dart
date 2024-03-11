import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kamariati Cosmetic', style: TextStyle(fontWeight: FontWeight.w500, color: Color.fromRGBO(255, 140, 149, 1)),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: Padding(padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network('https://enviostore.com/media/product/968/product_image-1674101878.jpg', alignment: Alignment.centerRight, width: 400,),
          const SizedBox(height: 20,),
          const Text('Skintific Gentle A Retinol Renewal Serum', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
          const Text('Rp125.000', textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Color.fromRGBO(255, 140, 149, 1)),),
          Padding(padding: const EdgeInsets.all(36),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 140, 149, 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(padding: const EdgeInsets.all(24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  children: [
                    Text('Total Harga', style: TextStyle(color: Colors.white, fontSize: 18),),
                    Text('Rp.125.000', style: TextStyle(color: Colors.white, fontSize: 18),)
                  ],
                ),
                TextButton(onPressed: (){
                  Get.dialog(
                    AlertDialog(
                      title: const Text('Konfirmasi Pembelian'),
                      content: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Apakah anda yakin untuk membeli produk ini?'),
                          SizedBox(height: 10,),
                        ],
                      ),
                      actions: [
                        TextButton(onPressed: () => Get.back(), child: const Text('Batal'),
                        ),
                        TextButton(onPressed: (){
                          Get.snackbar('Pembayaran Berhasil', 'Terima Kasih! Pembayaran anda telah berhasil.', backgroundColor: Colors.green, colorText: Colors.white);
                          Get.offNamed('/success');
                        }, child: const Text('Beli', style: TextStyle(color: Color.fromRGBO(255, 140, 149, 1)),)),
                      ],
                    )
                  );
                }, child: const Text('Bayar Sekarang!', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),))
              ],
            ),
            ),
          ),)
        ],
      ),
      ),
    );
  }
}