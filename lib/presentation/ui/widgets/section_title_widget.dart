import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  
  final String title;
  final VoidCallback? navigateToNextScreenMethod;
  
  const SectionTitle({
    super.key, 
    required this.title,
    required this.navigateToNextScreenMethod,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),),
        TextButton(
            onPressed: navigateToNextScreenMethod ?? (){},
            child: const Text("See all"))
      ],
    );
  }
}