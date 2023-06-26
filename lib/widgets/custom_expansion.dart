import 'package:flutter/material.dart';

class CustomExpansionPanel extends StatefulWidget {
  const CustomExpansionPanel({
    Key? key,
    this.padding,
    required this.text,
    this.textStyle,
    this.decorationboxcolor,
    this.borderRadius,
    this.color,
    this.decorationboxtextstyle,
    this.decorationboxheight,
    required this.decorationboxtext,
    required this.decorationboxdescription,
    this.decorationboxstyle,
    this.descriptioncheckbox,
    this.checkbox,
    required this.sessionTexts,
  }) : super(key: key);

  final EdgeInsets? padding;
  final String text;
  final TextStyle? textStyle;
  final Color? color;
  final Color? decorationboxcolor;
  final BorderRadius? borderRadius;
  final double? decorationboxheight;
  final String decorationboxtext;
  final String decorationboxdescription;
  final Widget? checkbox;
  final Widget? descriptioncheckbox;
  final TextStyle? decorationboxtextstyle;
  final TextStyle? decorationboxstyle;
  final List<String> sessionTexts;

  @override
  _CustomExpansionPanelState createState() => _CustomExpansionPanelState();
}

class _CustomExpansionPanelState extends State<CustomExpansionPanel> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      elevation: 1,
      expandedHeaderPadding: const EdgeInsets.only(bottom: 10),
      animationDuration: const Duration(milliseconds: 500),
      children: [
        ExpansionPanel(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          headerBuilder: (context, isExpanded) {
            return Container(
              padding: widget.padding,
              color: widget.color ?? Theme.of(context).primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.text,
                    style: widget.textStyle,
                  ),
                  widget.checkbox ?? const SizedBox(),
                ],
              ),
            );
          },
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(widget.sessionTexts.length, (index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      height: widget.decorationboxheight ?? 42,
                      decoration: BoxDecoration(
                        color: widget.decorationboxcolor ??
                            Theme.of(context).scaffoldBackgroundColor,
                        borderRadius:
                            widget.borderRadius ?? BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400.withOpacity(0.7),
                            spreadRadius: 0,
                            blurRadius: 5,
                            offset: const Offset(0, 1),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Text(
                                  widget.sessionTexts[index],
                                  style: widget.decorationboxstyle ??
                                      Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                          ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                widget.descriptioncheckbox ?? const SizedBox(),
                              ],
                            ),
                          ),
                          Text(
                            widget.decorationboxdescription,
                            style: widget.decorationboxtextstyle ??
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontSize: 16,
                                      color:
                                          Colors.grey.shade600.withOpacity(0.9),
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              );
            }),
          ),
          isExpanded: _isExpanded,
          canTapOnHeader: true,
        ),
      ],
      expansionCallback: (panelIndex, isExpanded) {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
    );
  }
}
