import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:realapppract_ice/widgets/outputoftransaction.dart';
import 'package:realapppract_ice/widgets/transactionlist.dart';
import 'package:realapppract_ice/widgets/datainput.dart';
import 'package:realapppract_ice/models/transaction.dart';

void main() {
  runApp(

      MyApp( ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState( ) => _MyAppState( );
}

class _MyAppState extends State<MyApp> {
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

  ////first method
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
  // TODO: implement widget

  //todo:second method///////
  ////this is a is a showmodalbuttomsheet method


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
              title: const Text('My Weekly Budget'),
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (context) {
                          return  MediaQuery (data:MediaQuery.of(context)   , child:  Container(
                            padding: EdgeInsets.only(
                              bottom:
                              MediaQuery.of(context).viewInsets.bottom,
                            ),
                            child: DataInput(inputdata: _input),
                          )
                          );

                          // return DataInput(inputdata: _input);
                        });
                  },
                  icon: Icon(
                    Icons.add_box,
                    color: Colors.pinkAccent,
                  ),
                ),
              ]),
          body: ListView(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TransactionList(
                  transaction: transaction,
                  ItemCount: transaction.length,
                )
                /////////////////////////////////////////////////////////////
              ],
            ),
          ])),
    );
  }
}
