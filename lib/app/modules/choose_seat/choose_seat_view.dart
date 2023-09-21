import 'package:airplane_app/app/themes/colors.dart';
import 'package:airplane_app/app/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../themes/fonts.dart';
import '../../themes/sizing.dart';

class ChooseSeatView extends StatefulWidget {
  static const route = '/choose-seat-view';
  const ChooseSeatView({super.key});

  @override
  State<ChooseSeatView> createState() => _ChooseSeatViewState();
}

class _ChooseSeatViewState extends State<ChooseSeatView> {
  @override
  Widget build(BuildContext context) {
    final maxWidth = MediaQuery.of(context).size.width;
    final maxHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: marginLarge),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildAppHeader(maxWidth),
              const SizedBox(
                height: 30,
              ),
              _buildCategoriesSection(),
              const SizedBox(
                height: 30,
              ),
              _buildSeatContainer(maxHeight),
              const SizedBox(
                height: 30,
              ),
              CustomRoundedButton(
                text: 'Continue to Checkout',
                onTap: () {
                  debugPrint('Checkout');
                },
                width: maxWidth,
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

  Widget _buildAppHeader(double maxWidth) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: SizedBox(
        width: maxWidth / 2,
        child: Text(
          'Select Your Favorite Seat',
          style: poppinsSemiBold.copyWith(fontSize: 24),
        ),
      ),
    );
  }

  Widget _buildCategoriesSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SeatContainerItem(
              size: 16,
              borderRadius: 6,
              borderColor: primaryColor,
              color: secondaryColor,
            ),
            const SizedBox(
              width: 6,
            ),
            Text('Available', style: poppinsRegular),
          ],
        ),
        Row(
          children: [
            SeatContainerItem(
              size: 16,
              borderRadius: 6,
              borderColor: primaryColor,
              color: primaryColor,
            ),
            const SizedBox(
              width: 6,
            ),
            Text('Selected', style: poppinsRegular),
          ],
        ),
        Row(
          children: [
            SeatContainerItem(
              size: 16,
              borderColor: const Color(0xffEBECF1),
              borderRadius: 6,
              color: const Color(0xffEBECF1),
            ),
            const SizedBox(
              width: 6,
            ),
            Text('Unavailable', style: poppinsRegular),
          ],
        ),
      ],
    );
  }

  Widget _buildSeatContainer(double maxHeight) {
    return Container(
      padding: const EdgeInsets.all(marginSmall),
      height: maxHeight / 1.8,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildFirstSeatColumn(),
              const SizedBox(
                width: 16,
              ),
              _buildSecondSeatColumn(),
              const SizedBox(
                width: 16,
              ),
              _buildSeatNumberingText(),
              const SizedBox(
                width: 16,
              ),
              _buildThirdSeatColumn(),
              const SizedBox(
                width: 16,
              ),
              _buildForthSeatColumn(),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Your Seat',
                style: poppinsLight.copyWith(fontSize: 14, color: greyColor),
              ),
              Text(
                'A3, B3',
                style: poppinsMedium.copyWith(fontSize: 16),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: poppinsLight.copyWith(fontSize: 14, color: greyColor),
              ),
              Text(
                'IDR 540.000',
                style:
                    poppinsMedium.copyWith(fontSize: 16, color: primaryColor),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Column _buildFirstSeatColumn() {
    return Column(
      children: [
        Text(
          'A',
          style: poppinsRegular.copyWith(fontSize: 16, color: greyColor),
        ),
        SeatContainerItem(
          size: 48,
          borderRadius: 15,
          borderColor: const Color(0xffEBECF1),
          color: const Color(0xffEBECF1),
          marginTop: 16,
        ),
        SeatContainerItem(
          size: 48,
          borderRadius: 15,
          borderColor: primaryColor,
          color: secondaryColor,
          marginTop: 16,
        ),
        SeatContainerItem(
          size: 48,
          borderRadius: 15,
          borderColor: primaryColor,
          color: secondaryColor,
          marginTop: 16,
          isSelected: true,
        ),
        SeatContainerItem(
          size: 48,
          borderRadius: 15,
          borderColor: primaryColor,
          color: secondaryColor,
          marginTop: 16,
        ),
        SeatContainerItem(
          size: 48,
          borderRadius: 15,
          borderColor: primaryColor,
          color: secondaryColor,
          marginTop: 16,
        ),
      ],
    );
  }

  Column _buildSecondSeatColumn() {
    return Column(
      children: [
        Text(
          'B',
          style: poppinsRegular.copyWith(fontSize: 16, color: greyColor),
        ),
        SeatContainerItem(
          size: 48,
          borderRadius: 15,
          borderColor: const Color(0xffEBECF1),
          color: const Color(0xffEBECF1),
          marginTop: 16,
        ),
        SeatContainerItem(
          size: 48,
          borderRadius: 15,
          borderColor: primaryColor,
          color: secondaryColor,
          marginTop: 16,
        ),
        SeatContainerItem(
          size: 48,
          borderRadius: 15,
          borderColor: primaryColor,
          color: secondaryColor,
          marginTop: 16,
          isSelected: true,
        ),
        SeatContainerItem(
          size: 48,
          borderRadius: 15,
          borderColor: const Color(0xffEBECF1),
          color: const Color(0xffEBECF1),
          marginTop: 16,
        ),
        SeatContainerItem(
          size: 48,
          borderRadius: 15,
          borderColor: primaryColor,
          color: secondaryColor,
          marginTop: 16,
        ),
      ],
    );
  }
}

Column _buildSeatNumberingText() {
  return Column(
    children: [
      const SizedBox(
        height: 48,
        width: 48,
      ),
      SizedBox(
        height: 48,
        width: 48,
        child: Center(
          child: Text(
            '1',
            style: poppinsRegular.copyWith(fontSize: 16, color: greyColor),
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 16),
        height: 48,
        width: 48,
        child: Center(
          child: Text(
            '2',
            style: poppinsRegular.copyWith(fontSize: 16, color: greyColor),
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 16),
        height: 48,
        width: 48,
        child: Center(
          child: Text(
            '3',
            style: poppinsRegular.copyWith(fontSize: 16, color: greyColor),
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 16),
        height: 48,
        width: 48,
        child: Center(
          child: Text(
            '4',
            style: poppinsRegular.copyWith(fontSize: 16, color: greyColor),
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 16),
        height: 48,
        width: 48,
        child: Center(
          child: Text(
            '5',
            style: poppinsRegular.copyWith(fontSize: 16, color: greyColor),
          ),
        ),
      ),
    ],
  );
}

Column _buildThirdSeatColumn() {
  return Column(
    children: [
      Text(
        'C',
        style: poppinsRegular.copyWith(fontSize: 16, color: greyColor),
      ),
      SeatContainerItem(
        size: 48,
        borderRadius: 15,
        borderColor: primaryColor,
        color: secondaryColor,
        marginTop: 16,
      ),
      SeatContainerItem(
        size: 48,
        borderRadius: 15,
        borderColor: primaryColor,
        color: secondaryColor,
        marginTop: 16,
      ),
      SeatContainerItem(
        size: 48,
        borderRadius: 15,
        borderColor: primaryColor,
        color: secondaryColor,
        marginTop: 16,
      ),
      SeatContainerItem(
        size: 48,
        borderRadius: 15,
        borderColor: primaryColor,
        color: secondaryColor,
        marginTop: 16,
      ),
      SeatContainerItem(
        size: 48,
        borderRadius: 15,
        borderColor: const Color(0xffEBECF1),
        color: const Color(0xffEBECF1),
        marginTop: 16,
      ),
    ],
  );
}

Column _buildForthSeatColumn() {
  return Column(
    children: [
      Text(
        'D',
        style: poppinsRegular.copyWith(fontSize: 16, color: greyColor),
      ),
      SeatContainerItem(
        size: 48,
        borderRadius: 15,
        borderColor: const Color(0xffEBECF1),
        color: const Color(0xffEBECF1),
        marginTop: 16,
      ),
      SeatContainerItem(
        size: 48,
        borderRadius: 15,
        borderColor: const Color(0xffEBECF1),
        color: const Color(0xffEBECF1),
        marginTop: 16,
      ),
      SeatContainerItem(
        size: 48,
        borderRadius: 15,
        borderColor: primaryColor,
        color: secondaryColor,
        marginTop: 16,
      ),
      SeatContainerItem(
        size: 48,
        borderRadius: 15,
        borderColor: primaryColor,
        color: secondaryColor,
        marginTop: 16,
      ),
      SeatContainerItem(
        size: 48,
        borderRadius: 15,
        borderColor: primaryColor,
        color: secondaryColor,
        marginTop: 16,
      ),
    ],
  );
}

class SeatContainerItem extends StatefulWidget {
  final double size;
  final double borderRadius;
  final Color color;
  final Color borderColor;
  final double? marginTop;
  bool? isSelected;

  SeatContainerItem({
    super.key,
    required this.size,
    required this.borderRadius,
    required this.borderColor,
    required this.color,
    this.marginTop,
    this.isSelected = false,
  });

  @override
  State<SeatContainerItem> createState() => _SeatContainerItemState();
}

class _SeatContainerItemState extends State<SeatContainerItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.color == const Color(0xffEBECF1) &&
            widget.borderColor == const Color(0xffEBECF1)) {
          return;
        }
        setState(() {
          widget.isSelected = !widget.isSelected!;
        });
      },
      child: Container(
        width: widget.size,
        height: widget.size,
        margin: EdgeInsets.only(top: widget.marginTop ?? 0),
        decoration: BoxDecoration(
          color: widget.isSelected! ? primaryColor : widget.color,
          borderRadius: BorderRadius.circular(widget.borderRadius),
          border: Border.all(
              color: widget.isSelected! ? primaryColor : widget.borderColor),
        ),
        child: widget.isSelected!
            ? Center(
                child: Text(
                  'YOU',
                  style: poppinsSemiBold.copyWith(color: whiteColor),
                ),
              )
            : null,
      ),
    );
  }
}
