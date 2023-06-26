import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class CourseCart extends StatefulWidget {
  const CourseCart({
    super.key,
    this.width = 175,
    required this.onTap,
    this.textStyle,
    this.color,
    this.height = 240,
    this.svgpicture,
    required this.text,
    this.showprogressindicator = true,
    required this.description,
    this.descriptionstyle,
    this.avatarColor,
    this.nexticon,
    this.padding =
        const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 20),
    this.borderRadius = const BorderRadius.all(
      Radius.circular(22),
    ),
  });
  final double height;
  final double width;
  final BorderRadius? borderRadius;
  final EdgeInsets? padding;
  final Color? color;
  final Widget? svgpicture;
  final String text;
  final TextStyle? textStyle;
  final String description;
  final TextStyle? descriptionstyle;
  final Color? avatarColor;
  final Widget? nexticon;
  final void Function() onTap;
  final bool showprogressindicator;

  @override
  State<CourseCart> createState() => _CourseCartState();
}

class _CourseCartState extends State<CourseCart> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: widget.padding,
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          borderRadius: widget.borderRadius,
          color:
              widget.color ?? Theme.of(context).primaryColor.withOpacity(0.1),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor:
                      widget.avatarColor ?? Theme.of(context).primaryColor,
                  child: widget.svgpicture,
                ),
                widget.nexticon ?? const SizedBox()
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  widget.text,
                  style: widget.textStyle ??
                      Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontFamily: "Gilroy-Regular",
                            fontWeight: FontWeight.w600,
                          ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      widget.description,
                      style: widget.descriptionstyle ??
                          Theme.of(context).textTheme.bodySmall!.copyWith(
                                fontSize: 13,
                                fontFamily: "Gilroy-Regular",
                                color: Colors.grey.shade600.withOpacity(1),
                              ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            if (widget.showprogressindicator)
              Row(
                children: [
                  Expanded(
                    child: LinearPercentIndicator(
                      progressColor: Theme.of(context).primaryColor,
                      percent: 0.3,
                      lineHeight: 7,
                      barRadius: const Radius.circular(20),
                    ),
                  ),
                  Text(
                    "30%",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Colors.grey.shade600.withOpacity(0.7),
                          fontSize: 12,
                          fontFamily: "Gilroy-Bold",
                        ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
