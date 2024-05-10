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
      text: 'Ramen',
      image: 'assets/icons/ramen.png',
    ),
    Categories(
      text: 'Burger',
      image: 'assets/icons/hamburger.png',
    ),
    Categories(
      text: 'Chicken',
      image: 'assets/icons/chicken.png',
    ),
    Categories(
      text: 'Vegan',
      image: 'assets/images/2.jpg',
    ),
    Categories(
      text: 'Ramen',
      image: 'assets/icons/ramen.png',
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
                InkWell(
                  overlayColor:
                      const MaterialStatePropertyAll(Colors.transparent),
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(category.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Text(
                  category.text,
                  style: TextStyle(color: colors.textColor),
                ),
              ],
            ),
            const SizedBox(width: 20)
          ],
        );
      },
    );
  }
}
