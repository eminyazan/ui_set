import 'package:flutter/material.dart';

import '../../ui_set.dart';

class UISetAutoCompleteListItem extends StatelessWidget {
  final String state, city;
  final Function onTap;
  final IconData icon;

  const UISetAutoCompleteListItem(
      {Key? key, required this.state, required this.city, required this.onTap, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Icon(
            icon,
            color: kcMediumGreyColor,
          ),
          onTap: () => onTap(),
          title: UISetText.subheading(city),
          subtitle: UISetText.caption(state),
        ),
        const Divider(
          indent: 50,
        )
      ],
    );
  }
}
