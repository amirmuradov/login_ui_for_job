import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Cart extends StatefulWidget {
  const Cart(
      {super.key,
      this.borderRadius,
      this.height,
      this.width,
      this.padding,
      required this.text});
  final BorderRadius? borderRadius;
  final double? height;
  final double? width;
  final EdgeInsets? padding;
  final String text;

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: Container(
        padding: widget.padding ??
            const EdgeInsets.only(top: 10, left: 20, bottom: 10, right: 10),
        height: widget.height ?? 100,
        width: widget.width ?? 275,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 10,
              offset: const Offset(0, 1),
            ),
          ],
          borderRadius: widget.borderRadius ?? BorderRadius.circular(14),
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(widget.text,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      )),
            ),
            SvgPicture.asset(
              'assets/light.svg',
              width: 48,
              height: 56,
            ),
          ],
        ),
      ),
    );
  }
}
