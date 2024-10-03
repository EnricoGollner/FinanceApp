import 'package:flutter/material.dart';
import 'package:ifinnance/core/theme/colors.dart';

class CustomCategoryCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final double value;

  const CustomCategoryCard(
      {super.key,
      required this.icon,
      required this.title,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: cardSurfaceColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 20),
              SizedBox(width: 5),
              Text(title, style: TextStyle(fontWeight: FontWeight.w600),),
            ],
          ),
          SizedBox(height: 7),
          Text('R\$ $value'),
        ],
      ),
    );
  }
}
