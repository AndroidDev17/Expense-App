import 'InputTransaction.dart';
import 'package:flutter/material.dart';
import 'transaction_list.dart';

class UserTransactions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 8
        ),
        child: Column(children: [
          InputTransaction(),
          TransactionList(),
        ],),
    );
  }
}