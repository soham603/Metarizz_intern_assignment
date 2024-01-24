import 'package:flutter/material.dart';
import 'package:metarizz/helper.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({super.key});

  @override
  Widget build(BuildContext context) {
    //mediaquery
    final mediaQuery = MediaQuery.of(context);
    return Card(
      elevation: 6,
      child: Container(
        width: mediaQuery.size.width * 0.7,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Helperfnc.navigationButtonOn, width: 2),
          gradient: const LinearGradient(
            colors: [
              Helperfnc.restaurantCardGradientColor,
              Helperfnc.darkBGColor,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Restaurant Name",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Helperfnc.specialsNearYouColor),
              ),
              Text(
                "Location",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Helperfnc.specialsNearYouColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BlankRestaurantCard extends StatelessWidget {
  const BlankRestaurantCard({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Column(
      children: [
        Card(
          elevation: 6,
          child: Container(
            width: mediaQuery.size.width * 0.7,
            height: 90,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Helperfnc.navigationButtonOn, width: 1.5),
              gradient: const LinearGradient(
                colors: [
                  Helperfnc.restaurantCardGradientColor,
                  Helperfnc.darkBGColor,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Restaurant Name",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Helperfnc.specialsNearYouColor),
              ),
              Text(
                "Location",
                style: TextStyle(fontSize: 11, color: Helperfnc.specialsNearYouColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
