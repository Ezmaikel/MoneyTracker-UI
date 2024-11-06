import 'package:flutter/material.dart';
import 'package:moneytracker/View/components/add_transaction_dialog.dart';
import 'package:moneytracker/View/components/home_header.dart';
import 'package:moneytracker/View/components/transactions_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: const SafeArea(
        child: Column(
          children: [HomeHeader(), TransactionsList()],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          //Mostrar un bottom sheet para agregar transaccion
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) {
                return const AddTransactionDialog();
              });
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
