import 'package:flutter/material.dart';
import 'package:moneytracker/View/widgets/header_card.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(height: 12),
          Text(
            'MONEY TRACKER',
            style: textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.bold, color: Colors.teal.shade900),
          ),
          const SizedBox(
            height: 12,
          ),
          Text('Balance',
              style: textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white.withOpacity(0.5),
              )),
          Text('\$ 1,000.000',
              style: textTheme.headlineLarge!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                HeaderCard(
                  title: 'Income',
                  ammount: 1000.00,
                  icon: Icon(
                    Icons.attach_money,
                    color: Colors.teal,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                HeaderCard(
                  title: 'Expense',
                  ammount: -500.00,
                  icon: Icon(
                    Icons.money_off,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
