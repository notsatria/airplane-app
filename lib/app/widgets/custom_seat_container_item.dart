import 'package:flutter/material.dart';

import '../themes/colors.dart';
import '../themes/fonts.dart';

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
