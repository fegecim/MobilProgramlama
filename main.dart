import 'package:flutter/material.dart';
import 'screens/firstscreen.dart';
import 'screens/secondscreen.dart';

//Giriş ekranına atmak için başlangıç noktası.
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hesap Makinesi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HesaplamaEkrani(),
    );
  }
}

