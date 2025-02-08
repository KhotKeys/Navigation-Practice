import 'package:flutter/material.dart';
import 'product_list_screen.dart';
import 'product_details.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsBinding.instance.deferFirstFrame();
  runApp(MyApp());
  WidgetsBinding.instance.allowFirstFrame();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => ProductListScreen(),
        '/details': (context) => ProductDetailsScreen(),
      },
    );
  }
}
