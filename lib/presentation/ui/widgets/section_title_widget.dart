

import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Trending',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),),
        Text('See all', style: TextStyle(
            fontSize: 16
        ),)
      ],
    );
  }
}