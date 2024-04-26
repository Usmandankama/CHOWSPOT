import 'package:flutter/material.dart';
import 'package:chow_spot/constants/colors.dart' as colors;
import '../model/Categories.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({super.key});

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  List<Categories> categoriesList = [
    Categories(
      text: 'Pizza',
      image: 'assets/icons/pizza.png',
    ),
    Categories(
      text: 'Vegan',
      image: 'assets/images/2.jpg',
    ),
    Categories(
      text: 'Ramen',
      image: 'assets/icons/ramen.png',
    ),
    Categories(
      text: 'Burger',
      image: 'assets/icons/hamburger.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categoriesList.length,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final category = categoriesList[index];
        return Row(
          children: [
            Column(
              children: [
                Container( 
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: const Color.fromARGB(40, 0, 0, 0).withOpacity(0.5),
                    //     spreadRadius: 2,
                    //     blurRadius: 5,
                    //     offset: const Offset(2, 0), // changes position of shadow
                    //   ),
                    // ],
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(category.image), fit: BoxFit.cover),
                  ),
                ),
                Text(category.text)
              ],
            ),
            const SizedBox(width: 20)
          ],
        );
      },
    );
  }
}
