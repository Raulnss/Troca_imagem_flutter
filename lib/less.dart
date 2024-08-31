import 'package:flutter/material.dart';
import 'package:trocar_img/full.dart';

class less extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: full(),
    );
  }
  
}