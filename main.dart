import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MENÜ"),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 175,
                  width: 75,
                  color: Colors.greenAccent,
                  child: Text("1.Sütun",style: TextStyle(color:Colors.white)),
                ),
                Container(
                  height: 175,
                  width: 100,
                  color: Colors.pink,
                  child: Text("2.Sütun",style: TextStyle(color:Colors.white)),
                ),
                Container(
                  height: 175,
                  width: 150,
                  color: Colors.amberAccent,
                  child: Text("3.Sütun",style: TextStyle(color: Colors.white))
                ),
                Container(
                    height: 175,
                    width: 85,
                    color: Colors.blueAccent,
                    child: Text("4.Sütun",style: TextStyle(color: Colors.white))
                )
              ],
            ),
            Row(
              children: [
                Container(
                  height: 175,
                  width: 75,
                  color: Colors.deepPurple,
                  child: Text("5.Sütun",style: TextStyle(color:Colors.white)),
                ),
                Container(
                  height: 175,
                  width: 100,
                  color: Colors.lime,
                  child: Text("6.Sütun",style: TextStyle(color:Colors.white)),
                ),
                Container(
                    height: 175,
                    width: 150,
                    color: Colors.redAccent,
                    child: Text("7.Sütun",style: TextStyle(color: Colors.white))
                ),
                Container(
                    height: 175,
                    width: 85,
                    color: Colors.green,
                    child: Text("8.Sütun",style: TextStyle(color: Colors.white))
                )
              ],
            )
          ],
        ),
      ),
    );
  }




}