import 'package:flutter/material.dart';

class MenuListTitle extends StatelessWidget {
  MenuListTitle({this.title, this.icon, this.onTap});
  final IconData icon;
  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Icon(
        icon,
      ),
      onTap: onTap,
    );
  }
}