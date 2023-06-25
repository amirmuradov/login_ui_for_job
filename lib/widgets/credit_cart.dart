import 'package:flutter/material.dart';

class CreditCart extends StatefulWidget {
  const CreditCart({
    super.key,
    this.width = 345,
    this.borderRadius = const BorderRadius.all(
      Radius.circular(14),
    ),
    this.height = 205,
  });
  final double? height;
  final double? width;
  final BorderRadius borderRadius;
  @override
  State<CreditCart> createState() => _CreditCartState();
}

class _CreditCartState extends State<CreditCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
          borderRadius: widget.borderRadius,
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 18,
              offset: const Offset(0, 1),
              color: Colors.grey.shade300.withOpacity(1),
            )
          ]),
    );
  }
}
