import 'package:flutter/material.dart';

import '../../themes/colors.dart';
import '../../themes/fonts.dart';
import '../../themes/sizing.dart';
import '../../widgets/custom_button.dart';
import '../home/home_view.dart';

class BonusSaldoView extends StatelessWidget {
  static const route = '/bonus-saldo-view';
  const BonusSaldoView({super.key});

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    final maxHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: marginLarge),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildBalanceCard(maxWidth, maxHeight),
              SizedBox(height: maxHeight / 7.5),
              _buildTitleText(),
              const SizedBox(height: 10),
              _buildSubtitleText(maxWidth),
              SizedBox(height: maxHeight / 15),
              _buildStartButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBalanceCard(double maxWidth, double maxHeight) {
    return Container(
      width: maxWidth,
      height: maxHeight / 4.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(roundedLarge),
        color: primaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: marginLarge, vertical: marginMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: poppinsLight.copyWith(
                          fontSize: 14, color: whiteColor),
                    ),
                    Text(
                      'Damar Satria Buana',
                      style: poppinsMedium.copyWith(
                          fontSize: 20,
                          color: whiteColor,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/airplane.png',
                      width: 24,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(
                      'Pay',
                      style: poppinsMedium.copyWith(
                          fontSize: 16, color: whiteColor),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Balance',
                  style: poppinsLight.copyWith(fontSize: 14, color: whiteColor),
                ),
                Text(
                  'IDR 1.000.000',
                  style:
                      poppinsMedium.copyWith(fontSize: 26, color: whiteColor),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTitleText() {
    return Text(
      'Big Bonus🎉',
      style: poppinsSemiBold.copyWith(fontSize: 32),
    );
  }

  Widget _buildSubtitleText(double maxWidth) {
    return SizedBox(
      width: maxWidth / 1.6,
      child: Text(
        'We give you early credit so that you can buy a flight ticket',
        textAlign: TextAlign.center,
        style: poppinsLight.copyWith(fontSize: 16, color: greyColor),
      ),
    );
  }

  Widget _buildStartButton(BuildContext context) {
    return CustomRoundedButton(
      text: 'Start Fly Now',
      onTap: () {
        Navigator.pushReplacementNamed(context, HomeView.route);
        debugPrint('Go To Home');
      },
      width: 220,
      height: 55,
      color: primaryColor,
      isShadow: false,
      textColor: whiteColor,
    );
  }
}
