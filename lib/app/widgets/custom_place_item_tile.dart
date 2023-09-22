import 'package:flutter/material.dart';

import '../data/models/place.dart';
import '../themes/colors.dart';
import '../themes/fonts.dart';
import '../themes/sizing.dart';

class CustomPlaceItemTile extends StatelessWidget {
  const CustomPlaceItemTile({super.key, required this.place});

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.symmetric(vertical: marginSmall),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(roundedSmall),
        boxShadow: const [
          BoxShadow(
              color: Color.fromARGB(10, 0, 0, 0),
              offset: Offset(0, 2),
              blurRadius: 6)
        ],
      ),
      child: ListTile(
        onTap: () {
          debugPrint('Place ${place.title} is tapped');
        },
        leading: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(roundedLarge),
            image: DecorationImage(
                image: AssetImage(
                  place.image,
                ),
                fit: BoxFit.cover),
          ),
        ),
        title: Text(
          place.title,
          style: poppinsMedium.copyWith(fontSize: 18),
        ),
        subtitle: Text(
          place.subtitle,
          style: poppinsLight.copyWith(fontSize: 14),
        ),
        trailing: Wrap(
          direction: Axis.horizontal,
          children: [
            const Icon(
              Icons.star,
              color: Color(0xffFFA235),
            ),
            const SizedBox(
              width: 2,
            ),
            Text(
              place.rating,
              style: poppinsMedium.copyWith(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
