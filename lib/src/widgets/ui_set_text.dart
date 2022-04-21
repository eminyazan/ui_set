
import 'package:flutter/material.dart';
import 'package:ui_set/src/shared/styles.dart';

import '../../box_ui.dart';

class BoxText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextAlign alignment;

  const BoxText.headingOne(this.text, {TextAlign align = TextAlign.start})
      : style = heading1Style,
        alignment = align;
  const BoxText.headingTwo(this.text, {TextAlign align = TextAlign.start})
      : style = heading2Style,
        alignment = align;
  const BoxText.headingThree(this.text, {TextAlign align = TextAlign.start})
      : style = heading3Style,
        alignment = align;
  const BoxText.headline(this.text, {TextAlign align = TextAlign.start})
      : style = headlineStyle,
        alignment = align;
  const BoxText.subheading(this.text, {TextAlign align = TextAlign.start})
      : style = subheadingStyle,
        alignment = align;
  const BoxText.caption(this.text, {TextAlign align = TextAlign.start})
      : style = captionStyle,
        alignment = align;

  BoxText.body(this.text,
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
