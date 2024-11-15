import 'package:flutter/material.dart';
import 'package:nike_shop/components/bottom_nav_bar.dart';
import 'package:nike_shop/pages/cart_page.dart';
import 'package:nike_shop/pages/shop_page.dart';

class SneakersPage extends StatefulWidget {
  const SneakersPage({super.key});

  @override
  State<SneakersPage> createState() => _SneakersPageState();
}

class _SneakersPageState extends State<SneakersPage> {
  int selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List _pages = [const ShopPage(), const CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ));
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  color: Colors.grey[900],
                  height: 200,
                  alignment: Alignment.center,
                  child: Image.asset(
                    'lib/images/logo.png',
                    width: 200,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Divider(
                    color: Colors.grey[800],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: ListTile(
                    title: Text("H O M E"),
                    titleTextStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: ListTile(
                    title: Text("A B O U T"),
                    titleTextStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, bottom: 25),
              child: ListTile(
                title: Text("LOG OUT"),
                titleTextStyle:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      body: _pages[selectedIndex],
    );
  }
}
