
import 'package:flutter/material.dart';

void navigateTo(context,widget)
=> Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);

Widget defaultFormField (@required TextInputType type) =>
    TextFormField(
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
        suffix: Icon(Icons.vpn_key),
        border: OutlineInputBorder(),
        hintText: 'Entrez le code',

      ),
    );