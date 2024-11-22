import 'package:flutter/material.dart';
import 'package:nike_shop/models/Cart.dart';
import 'package:nike_shop/pages/intro_page.dart';
import 'package:nike_shop/pages/sneakers_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const IntroPage(),
        routes: {
          '/intro': (context) => const IntroPage(),
          '/sneakers': (context) => const SneakersPage(),
        },
      ),
    );
  }
}
