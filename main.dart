import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text("Öğretmen Bilgi Sistemi",style: TextStyle(color: Colors.white)),
        ),
        body: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(style: TextStyle(color: Colors.white,fontSize: 20,fontStyle:FontStyle.normal ),"Hoşgeldiniz!",)
            ),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(style: TextStyle(color: Colors.white,fontSize: 16, fontStyle: FontStyle.italic),"Öğretmen bilgi sistemine başarıyla giriş yaptınız.",)
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: ("Vize Notunu giriniz."),
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: ("Final Notunu Giriniz."),
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed:(){
                  print("Tıklandı");
                },
                child: Text(style: TextStyle(color: Colors.black),"Hesapla"),
              )
            )
          ],
        ),
      ),
    );
  }
}