import 'package:flutter/material.dart';

import '../../themes/colors.dart';
import '../../themes/fonts.dart';
import '../../themes/sizing.dart';
import '../../widgets/custom_button.dart';

class DetailView extends StatelessWidget {
  static const route = '/detail-view';
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    final maxHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: _buildBottomNavbar(maxHeight, maxWidth),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                _buildBackgroundImage(maxHeight, maxWidth),
                _buildGradient(maxHeight, maxWidth),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: marginLarge),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Image.asset(
                          'assets/icons/emblem.png',
                          width: 120,
                        ),
                        SizedBox(
                          height: maxHeight / 3.6,
                        ),
                        _buildPlaceTitle(),
                        const SizedBox(
                          height: 30,
                        ),
                        _buildAboutCard(maxHeight, maxWidth),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavbar(double maxHeight, double maxWidth) {
    return Container(
      height: maxHeight / 10,
      color: whiteColor,
      padding: const EdgeInsetsDirectional.symmetric(
          horizontal: marginLarge, vertical: marginMedium),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'IDR 30.000',
                style: poppinsMedium.copyWith(fontSize: 18),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'per orang',
                style: poppinsLight,
              ),
            ],
          ),
          const Spacer(),
          CustomRoundedButton(
            text: 'Book Now',
            onTap: () {
              debugPrint('Book Now');
            },
            width: maxWidth / 2.5,
            height: 55,
            color: primaryColor,
            isShadow: false,
            textColor: whiteColor,
          ),
        ],
      ),
    );
  }

  Widget _buildBackgroundImage(double maxHeight, double maxWidth) {
    return Container(
      height: maxHeight / 2,
      width: maxWidth,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Colors.black,
              Colors.transparent,
            ]),
        image: DecorationImage(
          image: AssetImage('assets/images/ciliwung.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildGradient(double maxHeight, double maxWidth) {
    return Container(
      height: maxHeight / 2,
      width: maxWidth,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.center,
            colors: [
              Colors.black87,
              Colors.transparent,
            ]),
      ),
    );
  }

  Widget _buildPlaceTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lake Ciliwung',
              style: poppinsSemiBold.copyWith(fontSize: 24, color: whiteColor),
            ),
            Text(
              'Tangerang',
              style: poppinsLight.copyWith(fontSize: 16, color: whiteColor),
            ),
          ],
        ),
        Row(
          children: [
            const Icon(
              Icons.star,
              color: Color(0xffFFA235),
            ),
            Text(
              '4.8',
              style: poppinsMedium.copyWith(fontSize: 14, color: whiteColor),
            ),
          ],
        )
      ],
    );
  }

  Widget _buildAboutCard(double maxHeight, double maxWidth) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      width: maxWidth,
      height: maxHeight / 2.8,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About',
            style: poppinsSemiBold.copyWith(fontSize: 16),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
            style: poppinsRegular.copyWith(height: 2),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Interest',
            style: poppinsSemiBold.copyWith(fontSize: 16),
          ),
          const SizedBox(
            height: 6,
          ),
          const Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.verified_outlined,
                        color: primaryColor,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text('Kids Park'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.verified_outlined,
                        color: primaryColor,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text('City Museum'),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.verified_outlined,
                        color: primaryColor,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text('Honor Bridge'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.verified_outlined,
                        color: primaryColor,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text('Central Mall'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
