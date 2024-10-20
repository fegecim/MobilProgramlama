import 'package:flutter/cupertino.dart';
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
          title: Text(style: TextStyle(color: Colors.white),"Öğrenci Bilgi Sistemi"),
        ),
        body: Column(
          children:[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child:Center(
              child: Text(style: TextStyle(color: Colors.white,fontSize: 20,fontStyle:FontStyle.normal ),"Hoşgeldiniz!",)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(style: TextStyle(color: Colors.white,fontSize: 16, fontStyle: FontStyle.italic),"Öğrenci bilgi sistemine başarıyla giriş yaptınız.",)
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed:(){
                  print("Tıklandı");
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                ),
                child: Text(style: TextStyle(color: Colors.black,fontSize: 16.0),"Ders Programını Gör"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed:(){
                  print("Tıklandı");
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                ),
                child: Text(style: TextStyle(color: Colors.black,fontSize: 16.0,fontWeight: FontWeight.bold),"Danışmanını Gör"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed:(){
                  print("Tıklandı");
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                ),
                child: Text(style: TextStyle(color: Colors.black,fontSize: 16.0,fontWeight: FontWeight.bold),"Ders Ekle"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed:(){
                  print("Tıklandı");
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                ),
                child: Text(style: TextStyle(color: Colors.black,fontSize: 16.0,fontWeight: FontWeight.bold),"Ders Çıkar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}