import 'package:flutter/material.dart';
import 'package:numbers/core/app_colors.dart';
import 'package:numbers/data/models/number_model.dart';

class NumberFactScreen extends StatelessWidget {
  const NumberFactScreen({super.key, required this.numberData});

  final NumberModel numberData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(numberData.number.toString())),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        children: [
          Text(
            numberData.fact,
            style: TextStyle(color: AppColors.white, fontSize: 22),
          ),
        ],
      ),
    );
  }
}
