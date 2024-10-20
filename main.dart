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
          title: Text("İMU OBS",style: TextStyle(color: Colors.white)),
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset('assets/images/logo.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: ('Kullanıcı Adı'),
                  labelStyle: TextStyle(
                    color:Colors.black,
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
                  labelText: ('Şifre'),
                  labelStyle: TextStyle(
                    color:Colors.black,
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
                child: Text(style: TextStyle(color: Colors.black),"Giriş Yap"),
              )
            )
          ],
        ),
      ),
    );
  }
}