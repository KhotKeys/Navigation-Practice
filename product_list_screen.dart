import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final int price;
  final Color color;

  Product({required this.name, required this.description, required this.price, required this.color});
}

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(name: "Pixel 1", description: "Most featureful phone ever", price: 800, color: Colors.blue),
    Product(name: "Laptop", description: "Most productive development tool", price: 2000, color: Colors.green),
    Product(name: "Tablet", description: "Most useful device for meetings", price: 1500, color: Colors.orange),
    Product(name: "Pendrive", description: "Stylish phone accessory", price: 100, color: Colors.red),
  ];

  // Add a method to generate stars based on the price
  String _generateStars(int price) {
    int stars = (price / 100).floor();
    return '*' * stars;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product Navigation')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                '/details',
                arguments: products[index],
              );
            },
            child: Card(
              child: Container(
                color: products[index].color,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(products[index].name, style: TextStyle(fontSize: 20, color: Colors.white)),
                    Text(_generateStars(products[index].price)), // Display the stars
                    Text(products[index].description, style: TextStyle(fontSize: 18, color: Colors.white)),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}