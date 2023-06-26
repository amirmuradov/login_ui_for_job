import 'package:flutter/material.dart';

class CustomField extends StatefulWidget {
  const CustomField({
    Key? key,
    this.controller,
    this.padding = const EdgeInsets.symmetric(horizontal: 15),
    this.hintStyle,
    this.hintText,
    this.suffixText,
    this.margin,
    this.textStyle,
    this.contentPadding = const EdgeInsets.symmetric(vertical: 8),
  }) : super(key: key);

  final TextEditingController? controller;
  final EdgeInsets? padding;
  final TextStyle? hintStyle;
  final String? hintText;
  final EdgeInsets? margin;
  final String? suffixText;
  final TextStyle? textStyle;
  final EdgeInsets? contentPadding;

  @override
  State<CustomField> createState() => _CustomFieldState();
}

class _CustomFieldState extends State<CustomField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding!,
      child: Container(
        margin: widget.contentPadding,
        child: TextField(
          decoration: InputDecoration(
            hintText: widget.hintText ?? "+7",
            hintStyle: widget.hintStyle ??
                Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).hintColor,
                    ),
            suffixText: widget.suffixText,
            contentPadding: const EdgeInsets.symmetric(horizontal: 15),
          ),
          controller: widget.controller,
        ),
      ),
    );
  }
}
