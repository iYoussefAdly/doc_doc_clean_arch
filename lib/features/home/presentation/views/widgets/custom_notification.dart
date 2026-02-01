import 'package:doc_doc_clean_arch/core/utils/asset_data.dart';
import 'package:flutter/material.dart';

class CustomNotification extends StatelessWidget {
  const CustomNotification({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xffEDEDED),
        shape: BoxShape.circle,
      ),
      child: Stack(
        children: [
          Image.asset(AssetData.notificationImage),
          Positioned(
            left: 15,
            child: Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                 color: Color(0xffFA4B5C),
                shape: BoxShape.circle
              ),
            ),
          )
        ],
      ),
    );
  }
}