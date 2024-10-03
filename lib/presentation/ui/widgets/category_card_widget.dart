import 'package:flutter/material.dart';

import '../utility/app_color.dart';

class CategoryCardWidget extends StatelessWidget {

  final String title;
  final String description;
  const CategoryCardWidget({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset("assets/images/tech.png", width: 90,height: 90, fit: BoxFit.cover, )),
        const SizedBox(width: 8,),
         Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              const SizedBox(height: 8,),
              Text(description,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                softWrap: true,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)
                )
            ),
            child: const Text("Reed", style: TextStyle(
                color: Colors.white
            ),))
      ],
    );
  }
}