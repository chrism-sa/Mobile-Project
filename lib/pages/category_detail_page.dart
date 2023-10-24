import 'package:flutter/material.dart';
import 'package:agriplant/models/product.dart'; // Sesuaikan dengan lokasi definisi tipe Product
import 'package:agriplant/data/products.dart';
import 'package:agriplant/widgets/category_item.dart';


class CatDetailPage extends StatefulWidget {
  final String category; // Menambahkan parameter kategori
  CatDetailPage({Key? key, required this.category});

  @override
  State<CatDetailPage> createState() => _CatDetailPageState();
}

class _CatDetailPageState extends State<CatDetailPage> {
  late List<Product> categoryItems;

  @override
  void initState() {
    super.initState();

    categoryItems = products.where((product) => product.kategori == widget.category).toList();
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
              categoryItems.length,
              (index) {
                final categoryItem = categoryItems[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: CategoryItem(categoryItem: categoryItem),
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

