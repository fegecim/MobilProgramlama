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
  List<String> listeIci1 = [];
  List<String> listeIci2 = [];

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(style: TextStyle(color: Colors.white),"Sekreter Bilgi Sistemi"),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        style: TextStyle(color: Colors.white, fontSize: 20, fontStyle: FontStyle.normal),"Hoşgeldiniz!"
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                          style: TextStyle(color: Colors.white, fontSize: 16, fontStyle: FontStyle.italic),"Sekreter bilgi sistemine başarıyla giriş yaptınız."
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Spacer(),
                Container(
                  height: 70,
                  width: 177,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width:3.0 ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(style: TextStyle(color: Colors.black, fontSize: 20, fontStyle: FontStyle.normal),"ÖĞRENCİ EKLE"
                      ),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 200,
                  width: 155,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width:3.0 ),
                    color: Colors.white,
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child:Center(child: TextField(
                        controller: textController1,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            hintText: "Ad-Soyad",
                            hintStyle: TextStyle(color: Colors.black,fontSize: 20)
                        ),
                      ),
                      )
                  ),
                ),
                Container(
                  height: 200,
                  width: 101,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width:3.0 ),
                    color: Colors.blue,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                        onPressed: (){
                          setState(() {
                            listeIci1.add(textController1.text);
                            textController1.clear();
                          });
                        },
                        child: Text(style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),"Ekle"),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: 155,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width: 3.0 ),
                    color: Colors.white,
                  ),
                  child: ListView.builder(
                    itemCount: listeIci1.length,
                    itemBuilder: (context,index ){
                      return ListTile(
                        title: Text(
                          listeIci1[index],
                          style: TextStyle(color: Colors.black),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
            Row(
              children: [
                Spacer(),
                Container(
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width:3.0 ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(style: TextStyle(color: Colors.black, fontSize: 20, fontStyle: FontStyle.normal),"ÖĞRETMEN EKLE"
                      ),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 200,
                  width: 155,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width:3.0 ),
                    color: Colors.white,
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child:Center(
                        child: TextField(
                        controller: textController2,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            hintText: "Ad-Soyad",
                            hintStyle: TextStyle(color: Colors.black,fontSize: 20)
                        ),
                      ),
                      )
                  ),
                ),
                Container(
                  height: 200,
                  width: 101,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width:3.0 ),
                    color: Colors.blue,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                        onPressed: (){
                          setState(() {
                            listeIci2.add(textController2.text);
                            textController2.clear();
                          });
                        },
                        child: Text(style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),"Ekle"),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 200,
                  width: 155,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black,width:3.0 ),
                    color: Colors.white,
                  ),
                  child: ListView.builder(
                    itemCount: listeIci2.length,
                    itemBuilder: (context,index ){
                      return ListTile(
                        title: Text(
                          listeIci2[index],
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