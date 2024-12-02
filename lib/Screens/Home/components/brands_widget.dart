import 'package:flutter/material.dart';

import '../../../Models/brand_model.dart';
import 'brands_card_widget.dart';

class Brands extends StatelessWidget {
  const Brands({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemCount: brands.length,
        itemBuilder: (context, index) => BrandsCard(
          brand: brands[index],
        ),
      ),
    );
  }
}
