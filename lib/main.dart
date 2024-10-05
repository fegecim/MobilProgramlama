import 'dart:io';

class Urun { //Ürünlerin fiyatını ve ürün ismini tutan class.
  String? urunAdi;
  double fiyat;

  Urun(this.urunAdi, this.fiyat);
}

class AlisverisSepeti {//Ürünleri ve toplam fiyatını tutan class.
  List<Urun> urunler = [];
  double toplamFiyat = 0.0;

  void urunEkleme(Urun urun) { //Ürün ekleme fonksiyonu.
    urunler.add(urun);
    toplamiHesapla();
  }

  void toplamiHesapla() { //Toplam fiyatı hesaplama fonksiyonu.
    toplamFiyat = 0.0;
    for (var urun in urunler) {
      toplamFiyat += urun.fiyat;
    }
  }

  void sepettekiUrunler() { // Sepetteki ürünleri gösterme fonksiyonu.
    print("Sepetinizdeki Ürünler:");
    for (var urun in urunler) {
      print("${urun.urunAdi} - ${urun.fiyat.toStringAsFixed(2)} TL");
    }
    print("Toplam Tutar: ${toplamFiyat.toStringAsFixed(2)} TL");
  }

  void indirimliTutar(double indirimOrani) { // İndirimli tutarı hesaplama fonksiyonu.
    double indirimliFiyat = toplamFiyat * (1 - indirimOrani);
    print("İndirimli Toplam Tutar: ${indirimliFiyat.toStringAsFixed(2)} TL");
  }
}

void main() {
  print("ALIŞVERİŞ SEPETİNE HOŞGELDİNİZ\nLütfen yaşınızı giriniz.");
  String? giris = stdin.readLineSync(); // Yaş değeri için kullanıcıdan giriş alıyoruz.
  int? yas = int.tryParse(giris!);

  print("Lütfen müşteri numaranızı giriniz."); // Müşteri numarası için kullanıcıdan giriş alıyoruz.
  String? giris2 = stdin.readLineSync();
  int? musteriNo = int.tryParse(giris2!);

  // İndirim oranını belirleme
  double indirimOrani = 0.0;
  if (yas != null) {
    if (yas <= 18) {
      print("Tebrikler %10 indirim kazandınız.");
      indirimOrani = 0.10;
    } else if (yas > 60) {
      print("Tebrikler %15 indirim kazandınız.");
      indirimOrani = 0.15;
    } else {
      print("Tebrikler %5 indirim kazandınız.");
      indirimOrani = 0.05;
    }
  } else {
    print("Geçersiz yaş girdiniz.");
    return;
  }

  // Alışveriş sepetini başlatıyoruz
  AlisverisSepeti sepet = AlisverisSepeti();

  bool devam = true;

  while (devam) {
    print("Ürün eklemek için 1'i tuşlayınız. Ürün eklemeniz bittiyse Q'yu tuşlayınız.");

    String? secim = stdin.readLineSync(); // Kullanıcıdan seçim alıyoruz

    switch (secim?.toLowerCase()) {
      case '1':
        print("Lütfen ürün adını girin:");
        String? urunAdi = stdin.readLineSync();
        print("Lütfen ürün fiyatını girin:");
        double? urunFiyati = double.tryParse(stdin.readLineSync()!);
        if (urunAdi != null && urunFiyati != null) {
          Urun yeniUrun = Urun(urunAdi, urunFiyati);
          sepet.urunEkleme(yeniUrun);
          sepet.sepettekiUrunler();
        } else {
          print("Geçersiz ürün adı veya fiyat girdiniz.");
        }
        break;
      case 'q':
        print("$musteriNo Müşteri No'lu Alışverişiniz sona erdi. Bizi tercih ettiğiniz için teşekkürler.");
        sepet.sepettekiUrunler();
        sepet.indirimliTutar(indirimOrani);
        devam = false;
        break;
      default:
        print("Geçersiz seçim yaptınız.");
    }
  }
}
