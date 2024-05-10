import 'package:flutter/material.dart';
import 'package:chow_spot/constants/colors.dart' as colors;

import '../model/Offers.dart';

class OffersWidget extends StatefulWidget {
  const OffersWidget({super.key});

  @override
  State<OffersWidget> createState() => _OffersWidgetState();
}

class _OffersWidgetState extends State<OffersWidget> {
  List<Offers> offersList = [
    Offers(
      offer_name: "Saturday Special",
      offer_description: "Get our spicy chicken combo for 60% off",
      discount_percentage: "60%",
      image_path: "assets/images/",
    ),
    Offers(
      offer_name: "Saturday Special",
      offer_description: "Get our spicy chicken combo for",
      discount_percentage: "60%",
      image_path: "assets/images/",
    ),
    Offers(
      offer_name: "Saturday Special",
      offer_description: "Get our spicy chicken combo for",
      discount_percentage: "60%",
      image_path: "assets/images/",
    )
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: offersList.length,
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final offer = offersList[index];
        return Row(
          children: [
            Container(
              height: 150,
              width: 280,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:20,left: 8.0,right: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // color: Colors.amberAccent,
                      width: 160,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            offer.offer_name,
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(height: 5),
                          SizedBox(
                            width: 120,
                            child: Text(
                              offer.offer_description,
                              style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 10)
          ],
        );
      },
    );
  }
}
