import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:mpesa_flutter_plugin/mpesa_flutter_plugin.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  Future<dynamic> startTransaction( {required String phonenumber, required int amount}) async {
    dynamic transactionInitialisation;
//Wrap it with a try-catch
    try {

      transactionInitialisation =
          await MpesaFlutterPlugin.initializeMpesaSTKPush(
              businessShortCode:
                  "174379", //use your store number if the transaction type is CustomerBuyGoodsOnline
              transactionType: TransactionType
                  .CustomerPayBillOnline, //or CustomerBuyGoodsOnline for till numbers
              amount: double.parse(amount.toString()),
              partyA: phonenumber,
              partyB: "174379",
              callBackURL: Uri(scheme: "https", host: "1234.1234.co.ke", path: "/1234.php"),
              accountReference: "payment",
              phoneNumber: phonenumber,
              baseUri: Uri(scheme: "https", host: "sandbox.safaricom.co.ke"),
              transactionDesc: "demo",
              passKey:
                  "bfb279f9aa9bdbcf158e97dd71a467cd2e0c893059b10f78e6b72ada1ed2c919");

      print("RESULT:$transactionInitialisation");
    } catch (e) {
      print(transactionInitialisation.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daraja'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          child: const Text('add to cart'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          startTransaction(amount: 10, phonenumber: '254793710713');
        },
        tooltip: 'Increment',
        child: const Text('Pay'),
      ),
    );
  }
}
