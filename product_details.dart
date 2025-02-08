import 'package:flutter/material.dart';
import 'product_list_screen.dart';

class ProductDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context)!.settings.arguments as Product;

    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 200,
              color: product.color,
              child: Center(
                child: Text(
                  product.name,
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(product.description, style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text("Price: ${product.price} ${List.filled((product.price / 100).floor(), '*').join()}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}