import 'package:flutter/material.dart';
import 'dart:async';
import 'package:agriplant/models/product.dart';
import 'package:agriplant/pages/product_details_page.dart'; // Pastikan Anda mengimpor model produk

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key, required this.categoryItem});

  final Product categoryItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductDetailsPage(product: categoryItem),
          ),
        );
      },
      child: Dismissible(
        key: UniqueKey(),
        direction: DismissDirection.endToStart,
        background: Container(
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.red,
          ),
          child: const Icon(
            Icons.delete,
            color: Colors.white,
            size: 25,
          ),
        ),
        confirmDismiss: (DismissDirection direction) async {
          final completer = Completer<bool>();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              duration: const Duration(seconds: 3),
              action: SnackBarAction(
                label: "Keep",
                onPressed: () {
                  completer.complete(false);
                  ScaffoldMessenger.of(context).removeCurrentSnackBar();
                },
              ),
              content: const Text(
                "Remove from kategori?",
              ),
            ),
          );
          Timer(const Duration(seconds: 3), () {
            if (!completer.isCompleted) {
              completer.complete(true);
              ScaffoldMessenger.of(context).removeCurrentSnackBar();
            }
          });

          return await completer.future;
        },
        child: SizedBox(
          height: 125,
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: Colors.grey.shade200),
            ),
            elevation: 0.1,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    height: double.infinity,
                    width: 90,
                    margin: const EdgeInsets.only(right: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(categoryItem.image),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(categoryItem.name,
                            style: TextStyle(
                                fontSize:
                                    18)), // Ubah ke TextStyle sesuai kebutuhan
                        const SizedBox(height: 2),
                        Text(
                          categoryItem.description,
                          style: TextStyle(fontSize: 14),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\Rp.${categoryItem.price}",
                              style: TextStyle(
                                fontSize: 18,
                                color:
                                    Colors.black, // Ubah warna sesuai kebutuhan
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
