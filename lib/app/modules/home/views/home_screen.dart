import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homework_4_3/app/modules/home/views/login_screen.dart';
import 'package:homework_4_3/app/modules/home/views/widgets/product_grit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void logout(){
    Get.offAll(() => LoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kamariati Cosmetic', style: TextStyle(fontWeight: FontWeight.w500, color: Color.fromRGBO(255, 140, 149, 1)),),
        automaticallyImplyLeading: false,
        actions: [
          // Button untuk keluar
          IconButton(onPressed: logout, icon: Icon(Icons.logout, color: Color.fromRGBO(255, 140, 149, 1),))
        ],
        ),
      body: Padding(padding: const EdgeInsets.all(12),
      child: Center(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: [
            // -- Product 1
            ProductGrit(
              imageUrl: 'https://enviostore.com/media/product/968/product_image-1674101878.jpg', 
              productName: 'Skintific Gentle A Retinol Renewal Serum', 
              productPrice: 'Rp125.000', 
              onTapCallback: () => Get.toNamed('/checkout'),
            ),
            
            // -- Product 2
            ProductGrit(
              imageUrl: 'https://api.watsons.co.id/medias/zoom-side-28559.jpg?context=bWFzdGVyfGltYWdlc3wyNjM4NXxpbWFnZS9qcGVnfGFHSXpMMmd3Tmk4eE1URTFPVEF5TlRZeE5EZzNPQzlYVkVOSlJDMHlPRFUxT1MxemFXUmxMbXB3Wnd8Y2FiZTkwNmM2N2E5OWIyMDllM2YwYjBjOTgyOTU2YjY4NDBiY2ZiN2I1MjI0ZDQ5NGUzNTExOGQyNzk5Y2UyNQ', 
              productName: 'Skintific 5X Ceramide Low pH Cleanser', 
              productPrice: 'Rp89.000', 
              onTapCallback: () => Get.snackbar(
                'Kesalahan!', colorText: Colors.white, 
                'Maaf, barang ini sudah habis.',overlayColor: Colors.white ,
                backgroundColor: Colors.orange
              ),
            ),

            // -- Product 3
            ProductGrit(
              imageUrl: 'https://www.beautyhaul.com/assets/uploads/products/thumbs/800x800/SKINTIFIC_All_Day_Light_Sunscreen_Mist_SPF_50_PA%2B%2B%2B%2B_50ml.png', 
              productName: 'Skintific Sunscreen Mist SPF50 PA++++', 
              productPrice: 'Rp95.000', 
              onTapCallback: () => Get.snackbar(
                'Kesalahan!', colorText: Colors.white, 
                'Maaf, barang ini sudah tidak tersedia, segera mungkin kami akan lakukan update.',overlayColor: Colors.white ,
                backgroundColor: Colors.red
              ),
            ),

            // -- Product 4
            ProductGrit(
              imageUrl: 'https://images.soco.id/76c14446-1561-49be-b669-607af1f00430-.jpg', 
              productName: 'Skintific Cover All Perfect Cushion', 
              productPrice: 'Rp159.000', 
              onTapCallback: () => Get.snackbar(
                'Kesalahan!', colorText: Colors.white, 
                'Maaf, barang ini sudah habis.',overlayColor: Colors.white ,
                backgroundColor: Colors.orange
              ),
            ),

            // -- Product 5
            ProductGrit(
              imageUrl: 'https://www.beautyhaul.com/assets/uploads/products/thumbs/800x800/SKITIFIC_360_Crystal_Massager_Lifting_Eye_Cream_20gr.png', 
              productName: 'Skintific 360 Crystal Massager Lifting Eye', 
              productPrice: 'Rp165.000', 
              onTapCallback: () => Get.snackbar(
                'Kesalahan!', colorText: Colors.white, 
                'Maaf, barang ini sudah tidak tersedia, segera mungkin kami akan lakukan update.',overlayColor: Colors.white ,
                backgroundColor: Colors.red
              ),
            ),
            
            // -- Product 6
            ProductGrit(
              imageUrl: 'https://img.myshopline.com/image/store/1704437840303/6-2bc04ed2-f0a0-4f04-b9a8-cd6d6d307582.jpg?w=1024&h=1024', 
              productName: 'Skintific Alaska Volcano Pore Clay Stick', 
              productPrice: 'Rp79.000', 
              onTapCallback: () => Get.snackbar(
                'Kesalahan!', colorText: Colors.white, 
                'Maaf, barang ini sudah habis.',overlayColor: Colors.white ,
                backgroundColor: Colors.orange
              ),
            ),
            
            // -- Product 7
            ProductGrit(
              imageUrl: 'https://img.myshopline.com/image/store/1704437840303/-1-8.png?w=1200&h=1200', 
              productName: 'Skintific 2 pcs Serum + Moisturizer paket', 
              productPrice: 'Rp255.000', 
              onTapCallback: () => Get.snackbar(
                'Kesalahan!', colorText: Colors.white, 
                'Maaf, barang ini sudah habis.',overlayColor: Colors.white ,
                backgroundColor: Colors.orange
              ),
            ),

            // -- Product 8
            ProductGrit(
              imageUrl: 'https://images.soco.id/dca6c098-5ad5-4c11-bc83-feeeefaf1599-.jpg', 
              productName: 'Skintific All Day Perfect Serum Foundation', 
              productPrice: 'Rp165.000', 
              onTapCallback: () => Get.snackbar(
                'Kesalahan!', colorText: Colors.white, 
                'Maaf, barang ini sudah tidak tersedia, segera mungkin kami akan lakukan update.',overlayColor: Colors.white ,
                backgroundColor: Colors.red
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}

