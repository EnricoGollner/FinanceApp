import 'package:flutter/material.dart';
import 'package:ifinnance/core/theme/colors.dart';

class CustomTransactionCard extends StatelessWidget {
  final bool income;

  const CustomTransactionCard({super.key, this.income = false});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: cardSurfaceColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Visibility(
            visible: income,
            replacement: const Icon(
              Icons.arrow_downward,
              color: outColor,
            ),
            child: const Icon(
              Icons.arrow_upward,
              color: incomeColor,
            ),
          ),
          const SizedBox(width: 4),
          Column(
            children: [
              Text(income ? 'Income' : 'Spent'),
              Text(
                'R\$1.000,00',
                style: TextStyle(color: income ? incomeColor : outColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}