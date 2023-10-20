import 'package:flutter/material.dart';
import 'package:agriplant/models/product.dart'; // Sesuaikan dengan lokasi definisi tipe Product
import 'package:agriplant/data/products.dart';
import 'package:agriplant/widgets/cart_item.dart';


class CartPage extends StatefulWidget {
  final String category; // Menambahkan parameter kategori
  CartPage({Key? key, required this.category});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  late List<Product> cartItems;

  @override
  void initState() {
    super.initState();
    // Filter products based on the selected category
    cartItems = products.where((product) => product.kategori == widget.category).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Category ${widget.category}",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text("Enjoy our application", style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
        actions: [],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ...List.generate(
              cartItems.length,
              (index) {
                final cartItem = cartItems[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: CartItem(cartItem: cartItem),
                );
              },
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

