import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CreditCart extends StatefulWidget {
  const CreditCart({
    super.key,
    this.width = 343,
    this.textStyle,
    this.svgpicturerate,
    required this.name,
    this.borderRadius = const BorderRadius.all(
      Radius.circular(14),
    ),
    this.height = 202,
  });
  final double? height;
  final double? width;
  final BorderRadius borderRadius;
  final String name;
  final TextStyle? textStyle;
  final Widget? svgpicturerate;
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
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              top: 15,
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 19,
                  child: Text(
                    "logo",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    widget.name,
                    style: widget.textStyle ??
                        Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Theme.of(context).hintColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                  ),
                ),
                widget.svgpicturerate ?? SvgPicture.asset('assets/rating.svg')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
