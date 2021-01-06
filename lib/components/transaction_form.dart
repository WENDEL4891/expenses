import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {

  final titleController = TextEditingController();
  final valueController = TextEditingController();

  Widget build(BuildContext context) {
    return Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  TextField(
                      controller: titleController,
                      decoration: InputDecoration(
                        labelText: 'Título',
                      )),
                  TextField(
                    controller: valueController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Valor R\$',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FlatButton(
                          textColor: Colors.purple,
                          child: Text('Nova transação'),
                          onPressed: () {
                            print(titleController.text);
                            print(valueController.text);
                          }),
                    ],
                  ),
                ],
              ),
            ),
          );
  }
}