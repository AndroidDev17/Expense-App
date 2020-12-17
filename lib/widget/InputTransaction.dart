import 'package:flutter/material.dart';

class InputTransaction extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Title',
                labelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
                labelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              controller: amountController,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 8),
              alignment: Alignment.bottomRight,
              child: TextButton(
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.purple),
                ),
                onPressed: null,
              ),
            )
          ],
        ),
      ),
    );
  }
}
