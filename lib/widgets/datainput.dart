

import 'package:flutter/material.dart';
/*
import 'package:realapppract_ice/widgets/transactionlist.dart';
import 'package:realapppract_ice/widgets/datainput.dart';
import 'package:realapppract_ice/models/transaction.dart';
*/
class DataInput extends StatefulWidget {
  final Function inputdata;

  DataInput({required this.inputdata});

  @override
  State<DataInput> createState() => _DataInputState();
}

class _DataInputState extends State<DataInput> {
  final inputControl = TextEditingController();

  final amountControl = TextEditingController();

  var titleinput;

  var amountinput;

  void submitdata() {
    final inputt = inputControl.text;
    final amountt = double.parse(amountControl.text);
    if (inputt.isEmpty || amountt <= 0) {
      return; //this return is a validator that makes sure all of our input are Elements are valid base on the if conditions
      //the return wasleft blank beause return prevents a function from being runned hence  acting as a validator

    }
    widget.inputdata(inputt, amountt);
  }





  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6.0),
      child: Card(
        elevation: 10.0,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  labelText: 'Title', fillColor: Colors.pinkAccent),
              controller: inputControl,
              onChanged: (String titl) {
                titleinput = titl;
              },
              onSubmitted: (_) => submitdata(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountControl,
              keyboardType: TextInputType.number,
              onChanged: (String amoun) {
                amountinput = amoun;
              },
              onSubmitted: (_) => submitdata(),
              //an anonymous function is passed and the (_) is a convention for the anonymous function
            ),
            Container(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                  child: Text('ADD TRANSACTION', textAlign: TextAlign.center),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.pinkAccent)),
                  onPressed: () {
                    submitdata;
                    //so, we had to  give out onre method to both the onpressed and onsubmitted so we removed the ****input data vodcallback*** froim here
                  } //_input() ;
                  /**   print(titleinput);
                    print(amountinput);
                    print(amountControl);
                    print(inputControl);
                    input ;*/

                  ),
            ),
          ],
        ),
      ),
    );
  }
}
