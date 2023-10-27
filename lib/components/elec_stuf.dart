import 'package:flutter/material.dart';
import '../models/electric.dart';

class ElStuf extends StatelessWidget {
  Electric electric;
  void Function()? onTap;
  ElStuf({super.key, required this.electric, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shoe pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(electric.imagePath),
          ),

          // descrip
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              electric.description,
              style: TextStyle(color: Color.fromARGB(255, 52, 51, 51)),
            ),
          ),

          // price + details
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //electric name
                    Text(
                      electric.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),

                    const SizedBox(height: 5),

                    //price
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        electric.price,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 60, 60, 60),
                        ),
                      ),
                    ),
                  ],
                ),

                // plus button
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4),
                        bottomRight: Radius.circular(4),
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Color.fromARGB(255, 251, 249, 249),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // button to add to cart
        ],
      ),
    );
  }
}
