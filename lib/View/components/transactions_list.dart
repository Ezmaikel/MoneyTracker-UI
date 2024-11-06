import 'package:flutter/material.dart';

class TransactionsList extends StatelessWidget {
  const TransactionsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: ListView(
            children: const [
              ListTile(
                leading: Icon(
                  Icons.attach_money,
                  color: Colors.teal,
                ),
                title: Text('Income'),
                subtitle: Text('Salary'),
                trailing: Text(
                  '\$ 1,000.00',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.attach_money,
                  color: Colors.red,
                ),
                title: Text('Expense'),
                subtitle: Text('Rent'),
                trailing: Text(
                  '- \$ 500.00',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          )),
    );
  }
}
