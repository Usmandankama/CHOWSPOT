import 'package:chow_spot/screens/home_screen.dart';
import 'package:chow_spot/screens/order_screen.dart';
import 'package:flutter/material.dart';
import 'package:chow_spot/constants/colors.dart' as colors;

import '../model/Food.dart';

class FoodWidget extends StatefulWidget {
  const FoodWidget({super.key});

  @override
  State<FoodWidget> createState() => _FoodWidgetState();
}

class _FoodWidgetState extends State<FoodWidget> {
  List<Food> foods = [
    Food(
        foodName: 'Chicken Teriyaki',
        imagePath: 'assets/images/vegan1.jpg',
        price: 19),
    Food(
      foodName: 'Food name example',
      imagePath: 'assets/images/p7.jpg',
      price: 34,
    ),
    Food(
      foodName: 'Chicken Teriyaki',
      imagePath: 'assets/images/p2.jpg',
      price: 5,
    ),
    Food(
      foodName: 'Chicken whatabataudu',
      imagePath: 'assets/images/p3.jpg',
      price: 59,
    ),
    Food(
      foodName: 'Grum Teriyaki',
      imagePath: 'assets/images/p6.jpg',
      price: 59,
    ),
    Food(
      foodName: 'sndknsdbns sniiflerr',
      imagePath: 'assets/images/bg2.jpg',
      price: 59,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // padding: const EdgeInsets.only(left: 20),
      itemCount: foods.length,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 2,
        crossAxisSpacing: 10,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        final currentFood = foods[index];
        final currentFoodPrice = currentFood.price;
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OrderScreen(
                  foodName: currentFood.foodName,
                  imagePath: currentFood.imagePath,
                  price: currentFood.price,
                ),
              ),
            );
          },
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 160,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(currentFood.imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  currentFood.foodName,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '\$$currentFoodPrice',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      color: colors.accentColor),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
