import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/elec_stuf.dart';
import '../models/cart.dart';
import '../models/electric.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // add produk to cart
  void addElectricToCart(Electric electric) {
    Provider.of<Cart>(context, listen: false).addItemToCart(electric);

    // aler the user, shoe succes add
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Successfully added!'),
        content: Text('check your cart'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          //kolom pencarian
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Search',
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ],
            ),
          ),

          //message
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Text(
              'Menjual Peralatan Listrik Berkualitas',
              style: TextStyle(color: Colors.grey[800]),
            ),
          ),

          //best seller
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text(
                  'Premium Quality',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  'See All Product',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blueGrey),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

// list of produk for sale

          Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                // //get a produk from shop list
                Electric electric = value.getElectricList()[index];

                // return electric
                return ElStuf(
                  electric: electric,
                  onTap: () => addElectricToCart(electric),
                );
              },
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
            child: Divider(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
