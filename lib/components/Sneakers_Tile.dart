// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:nike_shop/models/sneakers.dart';

class SneakersTile extends StatelessWidget {
  void Function()? onTap;
  final Sneakers sneakers;
  SneakersTile(
      {super.key, required this.sneakers, required this.onTap}); // Add const

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 300,
      decoration: BoxDecoration(
          color: Colors.grey.shade100, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // sneakers pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              sneakers.imagePath,
            ),
          ),

          //price + details
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //description
                    Text(
                      sneakers.description,
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      sneakers.name,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Text(sneakers.price,
                        style: TextStyle(
                            color: Colors.grey.shade900, fontSize: 16)),
                  ],
                ),
              ),
              GestureDetector(
                onTap: onTap,
                child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12))),
                    child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    )),
              )
            ],
          )
        ],
      ),
    );
  }
}
