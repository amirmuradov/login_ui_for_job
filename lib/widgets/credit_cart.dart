import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui_for_job/widgets/custom_button.dart';

class CreditCart extends StatefulWidget {
  const CreditCart({
    super.key,
    this.width = 343,
    required this.amount,
    required this.deadline,
    required this.rate,
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
  final String amount;
  final String rate;
  final String deadline;

  @override
  State<CreditCart> createState() => _CreditCartState();
}

class _CreditCartState extends State<CreditCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
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
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  top: 10,
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 19,
                      backgroundColor: Theme.of(context).primaryColor,
                      child: Text(
                        "logo",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              fontSize: 11,
                              fontFamily: "OpenSans",
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          widget.name,
                          style: widget.textStyle ??
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: Theme.of(context).hintColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    fontFamily: "OpenSans",
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.2,
                          ),
                          child: widget.svgpicturerate ??
                              SvgPicture.asset('assets/rating.svg'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Сумма до",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14,
                          fontFamily: "Gilroy-Regular",
                          color: Theme.of(context).shadowColor,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 15,
                ),
                child: Text(
                  widget.amount,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontFamily: "Gilroy-Regular",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Ставка",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14,
                          fontFamily: "Gilroy-Regular",
                          color: Theme.of(context).shadowColor,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 15,
                ),
                child: Text(
                  widget.rate,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontFamily: "Gilroy-Regular",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Срок",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14,
                          fontFamily: "Gilroy-Regular",
                          color: Theme.of(context).shadowColor,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 15,
                ),
                child: Text(
                  widget.deadline,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontFamily: "Gilroy-Regular",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomBtn(
                padding: const EdgeInsets.all(0),
                onTap: () {},
                accentColor: Theme.of(context).primaryColor.withOpacity(0.1),
                text: "Отправить заявку",
                textStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontFamily: "Gilroy-Regular",
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Theme.of(context).primaryColor,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
