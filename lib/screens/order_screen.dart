import 'package:flutter/material.dart';
import 'package:chow_spot/constants/colors.dart' as colors;

import '../model/Food.dart';

class OrderScreen extends StatefulWidget {
  final String foodName;
  final String imagePath;
  final double price;
  List<Food> cartItems = [];

  OrderScreen(
      {super.key,
      required this.foodName,
      required this.imagePath,
      required this.price,
      required this.cartItems});

  @override
  OrderScreenState createState() => OrderScreenState();
}

class OrderScreenState extends State<OrderScreen> {
  int orderCount = 1;
  bool isFavourite = false;
  double get totalPrice => widget.price * orderCount;

  void _addToCart(Food food) {
    setState(() {
      widget.cartItems.add(food);
    });
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
          'Order',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: colors.textColor,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.imagePath),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            widget.foodName,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: colors.textColor,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$$totalPrice',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: colors.accentColor,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    isFavourite = !isFavourite;
                  });
                },
                icon: Icon(
                  isFavourite ? Icons.favorite : Icons.favorite_border,
                  color: isFavourite ? colors.accentColor : colors.textColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    if (orderCount > 1) {
                      orderCount--;
                    }
                  });
                },
                icon: Icon(
                  Icons.remove,
                  color: colors.accentColor,
                ),
              ),
              Text(
                orderCount.toString(),
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: colors.textColor,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    orderCount++;
                  });
                },
                icon: Icon(
                  Icons.add,
                  color: colors.accentColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Implement order functionality
              final food = Food(
                foodName: widget.foodName,
                imagePath: widget.imagePath,
                price: totalPrice,
              );
              _addToCart(food);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: colors.accentColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Add to Cart',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
