import 'package:flutter/material.dart';
import 'package:chow_spot/constants/colors.dart' as colors;

class OrderScreen extends StatefulWidget {
  String foodName;
  String imagePath;
  double price;
  OrderScreen({
    super.key,
    required this.foodName,
    required this.imagePath,
    required this.price,
  });

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int orderCount = 1;
  bool isFavourite = false;

// Widget _Ord

  Widget orderWidget(double foodprice){
    return Container();
  }

  @override
  Widget build(BuildContext context) {
     double totalPrice = widget.price * orderCount;
    return Scaffold(
      backgroundColor: colors.primaryColor,
      appBar: AppBar(
        backgroundColor: colors.primaryColor,
        centerTitle: true,
        title: const Text(
          'Order',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(widget.imagePath),
              fit: BoxFit.cover,
            )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.foodName,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                ),
              ),
              IconButton(
                onPressed: () {
                  if (isFavourite) {
                    setState(() {
                      isFavourite = false;
                    });
                  } else {
                    setState(() {
                      isFavourite = true;
                    });
                  }
                },
                icon: isFavourite
                    ? const Icon(
                        Icons.favorite_rounded,
                        color: Colors.red,
                      )
                    : const Icon(
                        Icons.favorite_outline_rounded,
                        size: 25,
                      ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  if (orderCount > 0) {
                    setState(() {
                      orderCount--;
                      // foodPrice = foodPrice * orderCount;
                    });
                  }
                },
                icon: const Icon(
                  Icons.remove_circle_outline_rounded,
                ),
              ),
              Text(
                '$orderCount',
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    orderCount++;
                    // foodPrice = foodPrice * orderCount;
                  });
                },
                icon: Icon(
                  Icons.add_circle_rounded,
                  color: colors.complementaryColor,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                '\$$totalPrice',
                // '',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  color: colors.complementaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
