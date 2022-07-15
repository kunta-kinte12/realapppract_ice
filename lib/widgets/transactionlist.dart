import 'package:flutter/material.dart';
import 'package:realapppract_ice/models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transaction;

  int ItemCount;

  TransactionList({required this.transaction, required this.ItemCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
//first it was a column and was replaced by the listview.builder
      child: ListView.builder(
        // item builder takes a function,the first element in the method you have to choose the name
        itemBuilder: (ctx, index) {
          return Card(
              child: Row(children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.all(14),
                child: Text(
                  //the toString Asfixed enasures we get a fixed number of decimal points
                  '\$${transaction[index].amount.toStringAsFixed(2)}',
                  //tx.amount.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.pinkAccent,
                  ),
                ),
                decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: Border.all(
                      color: Colors.pinkAccent,
                      width: 2.0,
                    ) /*+
                              Border.all(
                                color: Colors.yellow,
                                width: 6.0,
                              ) +
                              Border.all(
                                color: Colors.green,
                                width: 6.0,
                              )*/
                    ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(transaction[index].title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                  SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    //the date format was edited using the intl external package
                    DateFormat.jm(
                            /*you can change the date format from links in the next lecture slide*/)
                        .format(transaction[index].date),
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Icon(Icons.workspaces_outlined),
            ),
          ]));
        },
        itemCount: transaction.length,

        /*children: transaction.map((tx) {
          //step 2 i then cut my whole card from this section
          return Card(
              child: Row(children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(14),
                    child: Text(
                      '\$${tx.amount}', //tx.amount.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 19.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.pinkAccent,
                      ),
                    ),
                    decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: Border.all(
                          color: Colors.pinkAccent,
                          width: 2.0,
                        ) /*+
                              Border.all(
                                color: Colors.yellow,
                                width: 6.0,
                              ) +
                              Border.all(
                                color: Colors.green,
                                width: 6.0,
                              )*/
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(tx.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          )),
                      SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        //the date format was edited using the intl external package
                        DateFormat.jm(
                          /*you can change the date format from links in the next lecture slide*/)
                            .format(tx.date),
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed:  delete ,
                  child: Icon(Icons.wrong_location_outlined),
                ),
              ]));
        }).toList(),*/
      ),
    );
  }
}
