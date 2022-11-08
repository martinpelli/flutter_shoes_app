import 'package:flutter/material.dart';
import 'package:flutter_shoes_app/src/pages/shoe_page.dart';
import 'package:flutter_shoes_app/src/providers/shoe_provider.dart';
import 'package:provider/provider.dart';

void main() {
  return runApp(MultiProvider(providers: [ChangeNotifierProvider(create: (_) => ShoeProvider())], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Shoes App',
        //home: ShoePage()
        home: ShoePage());
  }
}
