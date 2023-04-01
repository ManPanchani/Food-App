import 'package:e_commerce_app/controllers/product_controlers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../globals/all_products.dart';
import '../models/product_models.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  ProductController productController = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    ProductDB data = ModalRoute.of(context)!.settings.arguments as ProductDB;

    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart Page"),
        actions: [
          IconButton(
            onPressed: () {
              Get.changeTheme(
                  Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
              setState(() {});
            },
            icon: (Get.isDarkMode)
                ? const Icon(Icons.dark_mode)
                : const Icon(Icons.light_mode_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              child: SizedBox(
                height: h * 0.15,
                width: w,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: h * 0.15,
                        width: w * 0.3,
                        child: const Image(
                          image: AssetImage(
                            "images/food/7 cheese.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        children: [
                          const Text(
                            "Chinese bhel",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const Text(
                            "RS: 500",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black26,
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.remove,
                                ),
                              ),
                              const Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black26,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.remove_shopping_cart_outlined),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// Padding(
// padding: const EdgeInsets.all(10),
// child: Column(
// children: [
// Expanded(
// flex: 1,
// child: Column(
// children: [
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// Obx(
// () => Text(
// "Total Quantity: ${productController.totalQuantity}",
// style: const TextStyle(
// fontWeight: FontWeight.w500,
// fontSize: 18,
// ),
// ),
// ),
// Obx(
// () => Text(
// "Total Price: ${productController.totalPrice}",
// style: const TextStyle(
// fontWeight: FontWeight.w500,
// fontSize: 18,
// ),
// ),
// ),
// ],
// ),
// ],
// ),
// ),
// Expanded(
// flex: 12,
// child: Obx(
// () {
// return ListView.builder(
// itemCount: productController.addedProducts.length,
// itemBuilder: (context, i) {
// return Card(
// elevation: 3,
// child: Container(
// height: h * 0.3,
// width: w,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(15),
// ),
// child: Column(
// children: [
// Container(
// height: h * 0.2,
// width: w,
// decoration: BoxDecoration(
// borderRadius: const BorderRadius.vertical(
// top: Radius.circular(10),
// ),
// image: DecorationImage(
// image: AssetImage(
// "${productController.addedProducts[i].image}"),
// fit: BoxFit.cover,
// ),
// ),
// ),
// Row(
// mainAxisAlignment:
// MainAxisAlignment.spaceAround,
// children: [
// Column(
// children: [
// Text(
// "${productController.addedProducts[i].name}",
// style: const TextStyle(
// fontSize: 22,
// fontWeight: FontWeight.bold,
// ),
// ),
// Text(
// "Rs: ${productController.addedProducts[i].price}",
// style: const TextStyle(
// fontSize: 18,
// fontWeight: FontWeight.bold,
// ),
// ),
// ],
// ),
// OutlinedButton(
// onPressed: () {
// // productController.countPlus(
// //     product: Global.food[i]);
// setState(() {});
// },
// child: const Icon(Icons.add),
// ),
// Text(
// "${Global.food[i].quantity}",
// style: const TextStyle(fontSize: 20),
// ),
// OutlinedButton(
// onPressed: () {
// // productController.countDecrement(
// //     product: Global.food[i]);
// setState(() {});
// },
// child: const Icon(Icons.remove),
// ),
// OutlinedButton(
// onPressed: () {
// productController.removeProduct(
// product: Global.food[i],
// );
// },
// child:
// const Icon(Icons.remove_shopping_cart),
// ),
// ],
// ),
// ],
// ),
// ),
// );
// },
// );
// },
// ),
// ),
// ],
// ),
// ),
