import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  TextEditingController textController1=TextEditingController();
  TextEditingController textController2=TextEditingController();
  String goruntulenenMetin= "";
  List<String> listeIci = [];

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("MENÜLER"),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width:1.0 ),
                    color: Colors.cyan,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: TextField(
                        controller: textController1,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            hintText: "Metin giriniz.",
                            hintStyle: TextStyle(color: Colors.black)
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width:1.0 ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: (){
                        setState(() {
                          goruntulenenMetin=textController1.text;
                        });
                      },
                      child: Text(style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),"Yan Tarafa Ekle"),
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width:1.0 ),
                    color: Colors.cyan,
                  ),
                  child: Center(
                    child: Text(
                      goruntulenenMetin,
                      style: TextStyle(color:Colors.black),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width:1.0 ),
                    color: Colors.lime,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child:Center(child: TextField(
                      controller: textController2,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          hintText: "Metin giriniz.",
                          hintStyle: TextStyle(color: Colors.black)
                        ),
                      ),
                    )
                  ),
                ),
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width:1.0 ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: (){
                        setState(() {
                          listeIci.add(textController2.text);
                          textController2.clear();
                        });
                      },
                      child: Text(style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),"Yan Tarafa Ekle(List)"),
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: 400,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width:1.0 ),
                    color: Colors.lime,
                  ),
                  child: ListView.builder(
                    itemCount: listeIci.length,
                    itemBuilder: (context,index ){
                      return ListTile(
                        title: Text(
                          listeIci[index],
                          style: TextStyle(color: Colors.black),
                        ),
                      );
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ) ,
    );
  }


}