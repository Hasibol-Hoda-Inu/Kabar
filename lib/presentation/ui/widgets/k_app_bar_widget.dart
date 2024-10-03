import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utility/image_assets.dart';

class KAppBar extends StatelessWidget implements PreferredSizeWidget{
  const KAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          SvgPicture.asset(ImageAssets.logo, width: 100,),
          const Spacer(),
          InkWell(
            onTap: (){},
            child: Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: const Offset(0, 0),
                    )
                  ]
              ),
              child: const Icon(Icons.notifications_none_rounded, size: 26,),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}