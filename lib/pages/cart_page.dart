import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/cart_item.dart';
import 'package:flutter_application_1/models/electric.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (contect, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            //heading
            Text(
              'My Cart',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  //get individual produk
                  Electric individualElectric = value.getUserCart()[index];

                  //return the cart item
                  return CartItem(electric: individualElectric);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
