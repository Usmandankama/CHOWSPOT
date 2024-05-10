import 'package:flutter/material.dart';
import 'package:chow_spot/constants/colors.dart' as colors;

import '../model/Food.dart';

class CartScreen extends StatefulWidget {
  List<Food> cartItems = [];
  CartScreen({super.key, required this.cartItems});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  void _removeFromCart(int index) {
    setState(() {
      widget.cartItems.removeAt(index);
    });
  }

  Widget _buildCartItem(Food food, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(food.imagePath),
          ),
          title: Text(
            food.foodName,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              color: colors.textColor,
            ),
          ),
          subtitle: Text(
            '\$${food.price}', // Replace with actual item price
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
              color: colors.textColor,
            ),
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.remove_circle_outline,
              color: colors.accentColor,
            ),
            onPressed: () {
              // Implement remove item functionality
              _removeFromCart(index);
            },
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.primaryColor,
      appBar: AppBar(
        backgroundColor: colors.primaryColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Cart',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: colors.textColor,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: widget.cartItems.length,
        itemBuilder: (context, index) {
          return _buildCartItem(widget.cartItems[index], index);
        },
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total:', 
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: colors.textColor,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement checkout functionality
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: colors.accentColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'Checkout',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(backgroundColor: primaryColor,
//         title: const Text('E-commerce Cart',),
//       ),
//       body: ListView.builder(
//      
//     );
//   }
// }