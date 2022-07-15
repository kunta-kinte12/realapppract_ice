/*

import 'package:flutter/material.dart';
import 'package:realapppract_ice/widgets/transactionlist.dart';
import 'package:realapppract_ice/widgets/datainput.dart';
import 'package:realapppract_ice/models/transaction.dart';

class Outputoftransaction extends StatefulWidget {
  const Outputoftransaction({Key? key}) : super(key: key);

  @override
  State<Outputoftransaction> createState() => OutputoftransactionState();
}

class OutputoftransactionState extends State<Outputoftransaction> {
  final List<Transaction> transaction = [
    Transaction(
        id: 'kojo',
        amount: 69.60,
        title: 'Party expenses',
        date: DateTime.now()),
    Transaction(
        id: 'abena',
        amount: 129.60,
        title: 'Kempenski holidays',
        date: DateTime.now()),
  ];

  //this is where i will add my new list card
  void _input(String txtitle, double txamount) {
    final newinput = Transaction(
        id: txtitle + 'expenses for the week',
        amount: txamount,
        title: txtitle,
        date: DateTime.now());
    setState(() {
      transaction.add(newinput);
    });
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DataInput(inputdata: _input),
        TransactionList(transaction: transaction,  ItemCount: transaction.length,)
      ],
    );
  }
}



 */
