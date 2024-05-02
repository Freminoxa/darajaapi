import 'package:darajaapifluttter/pages/homepage.dart';
import 'package:darajaapifluttter/pages/keys.dart';
import 'package:flutter/material.dart';
import 'package:mpesa_flutter_plugin/initializer.dart';

  void main(){
    MpesaFlutterPlugin.setConsumerKey(kConsumerkey);
    MpesaFlutterPlugin.setConsumerSecret(kConsumerSecret);
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

