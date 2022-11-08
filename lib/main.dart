import 'package:flutter/material.dart';
import 'package:flutter_shoes_app/src/pages/shoe_detail_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Shoes App',
        //home: ShoePage()
        home: ShoeDetailPage());
  }
}
