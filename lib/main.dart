import 'package:flutter/material.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Despesas Pessoais',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Despesas Pessoais'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            color: Colors.blue,
            elevation: 5,
            child: Text('Gráfico'),
          ),
          Container(
            child: Card(
              child: Text(
                'Lista de Transações',
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
