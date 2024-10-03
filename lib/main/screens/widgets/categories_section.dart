import 'package:flutter/material.dart';
import 'package:ifinnance/main/screens/widgets/custom_category_card.dart';

class CategoriesSection extends StatelessWidget {
  final double shoppingSpent;
  final double educationSpent;
  final double workSpent;
  final double investmentsSpent;
  final double transportSpent;
  final double healthSpent;

  const CategoriesSection({
    super.key,
    required this.shoppingSpent,
    required this.educationSpent,
    required this.investmentsSpent,
    required this.workSpent,
    required this.transportSpent,
    required this.healthSpent,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Row(
            children: [
              CustomCategoryCard(
                icon: Icons.shop_outlined,
                title: 'Shoppings',
                value: shoppingSpent,
              ),
              SizedBox(width: 15),
              CustomCategoryCard(
                icon: Icons.bus_alert_outlined,
                title: 'Education',
                value: shoppingSpent,
              ),
              SizedBox(width: 15),
              CustomCategoryCard(
                icon: Icons.shop,
                title: 'Work',
                value: shoppingSpent,
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              CustomCategoryCard(
                icon: Icons.shop,
                title: 'Investment',
                value: shoppingSpent,
              ),
              SizedBox(width: 15),
              CustomCategoryCard(
                icon: Icons.shop,
                title: 'Transport',
                value: shoppingSpent,
              ),
              SizedBox(width: 15),
              CustomCategoryCard(
                icon: Icons.shop,
                title: 'Health',
                value: shoppingSpent,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
