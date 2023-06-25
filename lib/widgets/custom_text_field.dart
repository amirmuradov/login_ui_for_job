import 'package:flutter/material.dart';

class CustomField extends StatefulWidget {
  const CustomField(
      {super.key,
      this.controller,
      this.padding = const EdgeInsets.symmetric(horizontal: 15),
      this.hintStyle,
      this.hintText,
      this.suffixText,
      this.margin,
      this.textStyle});
  final TextEditingController? controller;
  final EdgeInsets? padding;
  final TextStyle? hintStyle;
  final String? hintText;
  final EdgeInsets? margin;
  final String? suffixText;
  final TextStyle? textStyle;

  @override
  State<CustomField> createState() => _CustomFieldState();
}

class _CustomFieldState extends State<CustomField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding!,
      child: Container(
        padding: widget.margin,
        child: TextField(
          decoration: InputDecoration(
            hintText: widget.hintText ?? "+7",
            hintStyle: widget.hintStyle ??
                Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).hintColor,
                    ),
            suffixText: widget.suffixText,
          ),
          controller: widget.controller,
        ),
      ),
    );
  }
}
