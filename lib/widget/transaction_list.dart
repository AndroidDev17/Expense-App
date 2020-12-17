import '../model/Transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatefulWidget {
  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _usertransactionList = [
    Transaction(id: '101', title: 'Groceries', amount: 15.35, dateTime: DateTime.now()),
    Transaction(id: '102', title: 'Barber', amount: 50.55, dateTime: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ..._usertransactionList
          .map((transaction) {
                return Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                          decoration: BoxDecoration(
                            border: Border.all(width: 2, color: Colors.purple),
                          ),
                          padding: EdgeInsets.all(12),
                          child: Text(
                            '\$${transaction.amount}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.purple),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              transaction.title,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.black38),
                            ),
                            Text(
                              DateFormat.yMMMMd().format(transaction.dateTime),
                              style:
                                  TextStyle(
                                    fontSize: 16, 
                                    color: Colors.grey
                                    ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              })
          .toList()
    ]);
  }
}
