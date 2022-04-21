
import 'package:flutter/material.dart';
import 'package:ui_set/src/shared/styles.dart';

import '../../ui_set.dart';

class UISetText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextAlign alignment;

  const UISetText.headingOne(this.text, {TextAlign align = TextAlign.start})
      : style = heading1Style,
        alignment = align;
  const UISetText.headingTwo(this.text, {TextAlign align = TextAlign.start})
      : style = heading2Style,
        alignment = align;
  const UISetText.headingThree(this.text, {TextAlign align = TextAlign.start})
      : style = heading3Style,
        alignment = align;
  const UISetText.headline(this.text, {TextAlign align = TextAlign.start})
      : style = headlineStyle,
        alignment = align;
  const UISetText.subheading(this.text, {TextAlign align = TextAlign.start})
      : style = subheadingStyle,
        alignment = align;
  const UISetText.caption(this.text, {TextAlign align = TextAlign.start})
      : style = captionStyle,
        alignment = align;

  UISetText.body(this.text,
      {Key? key, Color color = kcMediumGreyColor, TextAlign align = TextAlign.start})
      : style = bodyStyle.copyWith(color: color),
        alignment = align, super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: alignment,
    );
  }
}
