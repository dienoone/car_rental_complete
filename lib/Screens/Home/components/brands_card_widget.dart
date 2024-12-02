import 'package:flutter/material.dart';

import '../../../Models/brand_model.dart';

class BrandsCard extends StatelessWidget {
  final BrandsModel brand;
  const BrandsCard({super.key, required this.brand});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image.asset(
        brand.imagepath, // Updated to use local assets
        width: 70,
        height: 70,
        fit: BoxFit.cover, // Ensures the image fits nicely within the size
      ),
    );
  }
}
