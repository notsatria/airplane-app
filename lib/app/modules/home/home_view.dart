import 'package:flutter/material.dart';

import '../../data/dummies/places.dart';
import '../../themes/fonts.dart';
import '../../themes/sizing.dart';
import '../../widgets/custom_place_item_card.dart';
import '../../widgets/custom_place_item_tile.dart';

class HomeView extends StatelessWidget {
  static const route = '/home-view';
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: marginLarge),
          child: ListView(
            children: [
              _buildAppHeader(),
              const SizedBox(
                height: 40,
              ),
              _buildImageCarrousel(maxHeight),
              const SizedBox(
                height: 30,
              ),
              Text(
                'New This Year',
                style: poppinsSemiBold.copyWith(fontSize: 18),
              ),
              const SizedBox(
                height: 16,
              ),
              _buildPlaceListItem(maxHeight),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppHeader() {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Howdy,',
                style: poppinsSemiBold.copyWith(fontSize: 24),
              ),
              Text(
                'Damar Satria Buana',
                style: poppinsSemiBold.copyWith(fontSize: 24),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                'Where to fly today?',
                style: poppinsLight.copyWith(fontSize: 16),
              ),
            ],
          ),
          Image.asset(
            'assets/images/avatar.png',
            width: 60,
          ),
        ],
      ),
    );
  }

  Widget _buildImageCarrousel(double maxHeight) {
    return SizedBox(
      height: maxHeight / 2.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: placesCarrousel.length,
        itemBuilder: (context, index) =>
            CustomPlaceItemCard(place: placesCarrousel[index]),
      ),
    );
  }

  Widget _buildPlaceListItem(double maxHeight) {
    return SizedBox(
      height: maxHeight / 3,
      child: ListView.builder(
        itemCount: placesNew.length,
        itemBuilder: (context, index) =>
            CustomPlaceItemTile(place: placesNew[index]),
      ),
    );
  }
}
