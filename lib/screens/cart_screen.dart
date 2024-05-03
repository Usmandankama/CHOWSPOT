import 'package:flutter/material.dart';
import 'package:chow_spot/constants/colors.dart' as colors;

class CartScreen extends StatelessWidget {
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
        itemCount: 3, // Replace with actual item count from the cart
        itemBuilder: (context, index) {
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
                  backgroundImage: AssetImage('assets/food_image.jpg'),
                ),
                title: Text(
                  'Item Name',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: colors.textColor,
                  ),
                ),
                subtitle: Text(
                  '\$10.99', // Replace with actual item price
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
                  },
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total: \$32.97', // Replace with actual total price
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
                primary: colors.accentColor,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Padding(
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
