import 'package:flutter/material.dart';

import '../../themes/colors.dart';
import '../../themes/fonts.dart';
import '../../themes/sizing.dart';
import '../../widgets/custom_button.dart';
import "../home/home_view.dart";

class SuccessCheckoutView extends StatelessWidget {
  static const route = '/success-checkout-view';
  const SuccessCheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    final maxHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: marginLarge),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icons/scheduling.png',
                width: maxWidth - 100,
              ),
              const SizedBox(height: 50),
              Text(
                'Well Booked 😍',
                style: poppinsSemiBold.copyWith(fontSize: 32),
              ),
              const SizedBox(height: 10),
              Text(
                'Are you ready to explore the new world of experiences?',
                textAlign: TextAlign.center,
                style: poppinsLight.copyWith(
                  fontSize: 16,
                  color: greyColor,
                ),
              ),
              const SizedBox(height: 50),
              CustomRoundedButton(
                text: 'My Bookings',
                onTap: () {
                  debugPrint('My Bookings');
                  Navigator.pushReplacementNamed(context, HomeView.route);
                },
                width: maxWidth / 2,
                height: 55,
                color: primaryColor,
                isShadow: false,
                textColor: whiteColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
