import 'package:flutter/material.dart';

import '../../themes/colors.dart';
import '../../themes/fonts.dart';
import '../../themes/sizing.dart';
import '../../widgets/custom_button.dart';
import '../success_checkout/success_checkout_view.dart';

class CheckoutView extends StatelessWidget {
  static const route = '/checkout-view';
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    final maxHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
            right: marginLarge,
            left: marginLarge,
            top: 50,
            bottom: 30,
          ),
          child: ListView(
            children: [
              _buildAppHeader(maxWidth),
              const SizedBox(height: 30),
              _buildCheckoutCard(maxWidth, maxHeight),
              const SizedBox(height: 30),
              _buildBalanceCard(maxWidth, maxHeight),
              const SizedBox(height: 30),
              _buildPayButton(maxWidth, context),
              const SizedBox(height: 30),
              _buildTnCText(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTnCText() {
    return Align(
      alignment: Alignment.center,
      child: Text(
        'Terms and Conditions',
        style: poppinsLight.copyWith(
          fontSize: 16,
          decoration: TextDecoration.underline,
          color: greyColor,
        ),
      ),
    );
  }

  CustomRoundedButton _buildPayButton(double maxWidth, BuildContext context) {
    return CustomRoundedButton(
      text: 'Pay Now',
      onTap: () {
        debugPrint('Pay Now');
        Navigator.pushReplacementNamed(context, SuccessCheckoutView.route);
      },
      width: maxWidth,
      height: 55,
      color: primaryColor,
      isShadow: false,
      textColor: whiteColor,
    );
  }

  Container _buildBalanceCard(double maxWidth, double maxHeight) {
    return Container(
      width: maxWidth,
      padding: const EdgeInsets.all(marginLarge),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(roundedLarge),
        color: whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment Details',
            style: poppinsSemiBold.copyWith(fontSize: 16),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Container(
                width: maxWidth / 3.2,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(roundedLarge),
                    color: primaryColor,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 8,
                        color: Color.fromARGB(40, 0, 0, 0),
                        offset: Offset(0, 4),
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/airplane.png',
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Pay',
                      style: poppinsMedium.copyWith(
                          fontSize: 16, color: whiteColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'IDR 10.000.000',
                    style: poppinsSemiBold.copyWith(fontSize: 18),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Current Balance',
                    style:
                        poppinsLight.copyWith(fontSize: 14, color: greyColor),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Column _buildAppHeader(double maxWidth) {
    return Column(
      children: [
        SizedBox(
          width: maxWidth - 60,
          child: Center(
            child: Image.asset('assets/icons/fly-plane.png'),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'CGK',
              style: poppinsSemiBold.copyWith(fontSize: 24),
            ),
            Text(
              'TLC',
              style: poppinsSemiBold.copyWith(fontSize: 24),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Tangerang',
              style: poppinsLight.copyWith(fontSize: 14, color: greyColor),
            ),
            Text(
              'Ciliwung',
              style: poppinsLight.copyWith(fontSize: 14, color: greyColor),
            ),
          ],
        ),
      ],
    );
  }

  Container _buildCheckoutCard(double maxWidth, double maxHeight) {
    return Container(
      width: maxWidth,
      padding: const EdgeInsets.all(marginLarge),
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(roundedLarge)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(roundedLarge),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/ciliwung.png'),
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lake Ciliwung',
                    style: poppinsMedium.copyWith(fontSize: 18),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Tangerang',
                    style:
                        poppinsLight.copyWith(fontSize: 14, color: greyColor),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Color(0xffFFA235),
                  ),
                  Text(
                    '4.8',
                    style: poppinsMedium.copyWith(fontSize: 14),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Booking Details',
            style: poppinsSemiBold.copyWith(fontSize: 16),
          ),
          const SizedBox(
            height: 10,
          ),
          _buildBookingDetailItem(title: 'Traveler', value: '2 Person'),
          const SizedBox(
            height: 16,
          ),
          _buildBookingDetailItem(title: 'Seat', value: 'A3, B3'),
          const SizedBox(
            height: 16,
          ),
          _buildBookingDetailItem(
              title: 'Insurance', value: 'YES', color: successColor),
          const SizedBox(
            height: 16,
          ),
          _buildBookingDetailItem(
              title: 'Refundable', value: 'NO', color: errorColor),
          const SizedBox(
            height: 16,
          ),
          _buildBookingDetailItem(
              title: 'VAT', value: '45%', color: primaryColor),
          const SizedBox(
            height: 16,
          ),
          _buildBookingDetailItem(
              title: 'Price', value: 'IDR 800.000', color: primaryColor),
          const SizedBox(
            height: 16,
          ),
          _buildBookingDetailItem(
            title: 'Grand Total',
            value: 'IDR 800.000',
            color: primaryColor,
          ),
        ],
      ),
    );
  }

  Row _buildBookingDetailItem({String? title, String? value, Color? color}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(
              Icons.verified_outlined,
              color: primaryColor,
            ),
            const SizedBox(
              width: 6,
            ),
            Text(title!),
          ],
        ),
        Text(
          value!,
          style: poppinsSemiBold.copyWith(color: color),
        ),
      ],
    );
  }
}
