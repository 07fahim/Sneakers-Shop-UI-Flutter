import 'package:flutter/material.dart';
import 'package:nike_shop/components/bottom_nav_bar.dart';

class SneakersPage extends StatefulWidget {
  const SneakersPage({super.key});

  @override
  State<SneakersPage> createState() => _SneakersPageState();
}

class _SneakersPageState extends State<SneakersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
