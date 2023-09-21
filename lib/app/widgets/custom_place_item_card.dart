import 'package:flutter/material.dart';

import '../data/models/place.dart';
import '../modules/detail/detail_view.dart';
import '../themes/colors.dart';
import '../themes/fonts.dart';
import '../themes/sizing.dart';

class CustomPlaceItemCard extends StatelessWidget {
  const CustomPlaceItemCard({
    super.key,
    required this.place,
  });

  final Place place;

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    final maxHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(right: marginLarge),
      child: GestureDetector(
        onTap: () {
          debugPrint('Place ${place.title} is tapped');
          Navigator.pushNamed(context, DetailView.route);
        },
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: maxHeight / 4,
                  width: maxWidth / 2.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(roundedLarge),
                    image: DecorationImage(
                      image: AssetImage(place.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  place.title,
                  style: poppinsMedium.copyWith(fontSize: 18),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  place.subtitle,
                  style: poppinsLight.copyWith(fontSize: 14),
                ),
              ],
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                height: 35,
                width: maxWidth / 7,
                decoration: const BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(roundedLarge),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Color(0xffFFA235),
                      ),
                      Text(
                        place.rating,
                        style: poppinsMedium,
                      ),
                    ],
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
