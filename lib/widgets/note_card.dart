import 'package:flutter/material.dart';

import '../style/app_style.dart';

Widget noteCard(String title, String date, String content, Color color, Function()? onTap) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppStyle.mainTitle,
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            date,
            style: AppStyle.dateTitle,
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            content,
            style: AppStyle.mainContent,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
  );
}