import 'package:flutter/material.dart';

class KListtile extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? subtitle;
  final Widget? trailing;
  final void Function()? onKeyPressed;

  const KListtile(
      {super.key,
      this.leading,
      this.title,
      this.subtitle,
      this.onKeyPressed,
      this.trailing});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 30,
      onTap: onKeyPressed,
      leading: leading,
      title: title,
      subtitle: subtitle,
      trailing: trailing,
    );
  }
}
