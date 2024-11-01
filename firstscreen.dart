import 'package:flutter/material.dart';
import 'package:hesap_makinesi/screens/secondscreen.dart';

class HesaplamaEkrani extends StatefulWidget {
  _HesaplamaEkraniDurumu createState() => _HesaplamaEkraniDurumu();
}

class _HesaplamaEkraniDurumu extends State<HesaplamaEkrani> {
  TextEditingController birinciSayiKontrolu = TextEditingController();
  TextEditingController ikinciSayiKontrolu = TextEditingController();

  double? toplam;
  double? fark;

  void toplamHesapla() {
    double birinciSayi = double.tryParse(birinciSayiKontrolu.text) ?? 0; // Vize notu
    double ikinciSayi = double.tryParse(ikinciSayiKontrolu.text) ?? 0; // Final notu
    setState(() {
      toplam = birinciSayi + ikinciSayi;
    });
  }

  void _ikinciEkran(){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                IkinciEkran()
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text("Hesaplama Ekranı", style: TextStyle(color: Colors.black)),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                cursorColor: Colors.black,
                controller: birinciSayiKontrolu,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  labelText: "İlk sayıyı giriniz.",
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
                cursorColor: Colors.black,
                controller: ikinciSayiKontrolu,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  labelText: "İkinci sayıyı giriniz.",
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
                onPressed: () {
                  toplamHesapla();
                },
                child: Text("TOPLA", style: TextStyle(color: Colors.black)),
              ),
            ),
            if (toplam != null)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      "TOPLAM: ${toplam!.toStringAsFixed(2)}",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  _ikinciEkran();
                },
                child: Text("SONRAKİ EKRANA GEÇ", style: TextStyle(color: Colors.black)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
