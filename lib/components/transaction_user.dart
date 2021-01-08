import 'package:flutter/material.dart';
import './transaction_list.dart';
import './transaction_form.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  var _transactions = <Transaction>[
    Transaction(
      id: 't1',
      title: 'Novo tênis de corrida',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de luz',
      value: 211.30,
      date: DateTime.now(),
    )
  ];



  _addTransaction(String title, double value) {
    setState(() {
      _transactions.add(Transaction(
        id: UniqueKey().toString(),
        date: DateTime.now(),
        title: title,
        value: value,
      ));
    });
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(transactions: _transactions),
        TransactionForm(_addTransaction),
      ],
    );
  }
}
