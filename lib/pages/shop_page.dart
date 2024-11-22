import 'package:flutter/material.dart';
import 'package:nike_shop/models/Cart.dart';
import 'package:nike_shop/models/sneakers.dart';
import 'package:nike_shop/components/Sneakers_Tile.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // add sneakers to cart
  void addSneakersToCart(Sneakers sneakers) {
    Provider.of<Cart>(context, listen: false).addItemsToCart(sneakers);

    //alert the user

    showDialog(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: AlertDialog(
              backgroundColor: const Color.fromARGB(255, 43, 43, 43),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              title: const Text(
                "Sneakers added! ",
                style: TextStyle(color: Colors.white),
              ),
              content: const Text(
                "Check your cart",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                // Search bar
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Search",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                // Message
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Text(
                    "everyone files,... some fly longer than others",
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ),
                // Hot picks
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Hot Picks  🔥",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),

                Expanded(
                  child: ListView.builder(
                      itemCount: 7,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        //get a sneakers from sneakers list

                        Sneakers sneakers = value.getSneakersList()[index];
                        return SneakersTile(
                          sneakers: sneakers,
                          onTap: () => addSneakersToCart(sneakers),
                        );
                      }),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 25, right: 25, left: 25),
                  child: Divider(
                    color: Colors.white30,
                  ),
                )
              ],
            ));
  }
}
