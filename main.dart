import 'dart:io';

class Insan
{
  String? ad;
  String? soyad;

  String TamAd(a,b)
  {
    return "Ad: $ad, Soyad: $soyad" ;
  }

  void Konus(){
    print("Engeli yoksa insanlar konusur.\n");
  }

  Insan(x,y){
    this.ad = x;
    this.soyad = y;
  }
}

class Hoca extends Insan
{
  String? ders;

  Hoca(t,r,this.ders) : super(t,r);

  void Konus() //overriding
  {
    print("Ders anlatır.\n");
  }
  String hocaBilgi()
  {
    return "Ad:$ad, Soyad:$soyad, Ders: $ders" ;
  }

}
class Ogrenci extends Insan
{
  int ogrNu;

  Ogrenci(j,k,this.ogrNu) : super(j,k);

  void Konus(){
    print("Soru sorar.\n");
  }
  String ogrBilgi(){
    return "Ad: $ad, Soyad: $soyad, Öğrenci No: $ogrNu" ;
  }
}
class Sekreter extends Insan
{
  String? sicilNo;
  Sekreter(m,n,this.sicilNo): super(m,n);//m,n this.sicil superle ez

  void Konus(){
    print("Bilgilerini alır.\n");
  }

  String sekrBilgi(){
    return "Ad: $ad, Soyad: $soyad, Sicil No:$sicilNo" ;
  }
}
String? ogrenciEkle(){

}
void menu() {
  Ogrenci? o1;
  Sekreter? s1;
  Hoca? h1;
  bool a = true;
  while (a) {
    print("Merhabalar hoşgeldiniz.Lütfen görevinizi seçiniz.");
    print("\n1-Öğrenci\n2-Hoca\n3-Sekreter\nQ-Çıkış için q'ya basınız.");
    String? secim = stdin.readLineSync();
    switch (secim?.toLowerCase()) {
      case "1":
        print("Lütfen isminizi giriniz.");
        String? isim1 = stdin.readLineSync();
        print("Lütfen soyisminizi giriniz.");
        String? soyisim1 = stdin.readLineSync();
        print("Lütfen öğrenci numaranızı giriniz.");
        String? ogrenciNo1 = stdin.readLineSync();
        if (ogrenciNo1 != null) {
          int? numara = int.tryParse(ogrenciNo1); // Güvenli dönüşüm
          if (numara != null) {
            o1 = Ogrenci("$isim1", "$soyisim1", numara);
            print(o1.ogrBilgi());
            print("Sisteme başarıyla kaydoldunuz.");
          } else {
            print("Geçersiz bir öğrenci numarası girdiniz.");
          }
        } else {
          print("Herhangi bir girdi almadık.");
        }
        print("Soru sormak ister misiniz?");
        String? evethayir = stdin.readLineSync();
        print("Girdi: '$evethayir'"); // Girilen değeri görselleştir
        if (evethayir?.toLowerCase().trim() == "evet") {
          o1?.Konus();
        } else if (evethayir?.toLowerCase().trim() == "hayir") {
          print("Soru sormadınız.");
        } else {
          print("Yanlış değer girdiniz.");
        }
      case "2":
        print("Lütfen isminizi giriniz.");
        String? isim1 = stdin.readLineSync();
        print("Lütfen soyisminizi giriniz.");
        String? soyisim1 = stdin.readLineSync();
        print("Lütfen anlatacağınız dersin ismini giriniz.");
        String? ders1 = stdin.readLineSync();
        h1=Hoca("$isim1", "$soyisim1", "$ders1");
        print("Sisteme başarıyla kaydoldunuz.");
        print(h1.hocaBilgi());
        print("Ders anlatmak ister misiniz?");
        String? evethayir = stdin.readLineSync();
        if (evethayir?.toLowerCase().trim() == "evet") {
          h1?.Konus();
        } else if (evethayir?.toLowerCase().trim() == "hayir") {
          print("Ders anlatmadınız.");
        } else {
          print("Yanlış değer girdiniz.");
        }
      case "3":
        print("Lütfen isminizi giriniz.");
        String? isim1 = stdin.readLineSync();
        print("Lütfen soyisminizi giriniz.");
        String? soyisim1 = stdin.readLineSync();
        print("Lütfen sicil numaranızı giriniz.");
        String? sicilNo1 = stdin.readLineSync();
        s1=Sekreter("$isim1", "$soyisim1", "$sicilNo1");
        print("Sisteme başarıyla kaydoldunuz.");
        print(s1.sekrBilgi());
        print("Bilgileri almak ister misiniz?");
        String? evethayir = stdin.readLineSync();
        if (evethayir?.toLowerCase().trim() == "evet") {
          s1?.Konus();
        } else if (evethayir?.toLowerCase().trim() == "hayir") {
          print("Bilgileri almadınız.");
        } else {
          print("Yanlış değer girdiniz.");
        }
      case "q":
        print("Çıkış yaptınız.");
        a = false;
        break;
      default:
        print("Geçersiz değer girdiniz.");
    }
  }
}

void main() {
  //Dışarıdan değer alarak bu işlemi yapan uygulama.
  menu();
  /*
  //Değeri kendin vererek yapılan uygulama.
  Insan i1= Insan("Sinan","B");

  Hoca h1= Hoca("Ali","Al","Mobil");
  Insan i2= Hoca("Canan" ,"Can" , "oop");

  Ogrenci o1= Ogrenci("Furkan","Genç",22120205066);
  Insan i3= Ogrenci("Selim","Serez",21130605074);

  Sekreter s1= Sekreter("Melisa","Şenol","128546");
  Insan i4= Sekreter("Ayşe","Pehlivan","564585");

  print(i1.TamAd(i1.ad,i1.soyad));
  i1.Konus();

  print(h1.HocaBilgi());
  h1.Konus();
  print((i2 as Hoca).HocaBilgi());
  i2.Konus();

  print(o1.ogrBilgi());
  o1.Konus();
  print((i3 as Ogrenci).ogrBilgi());
  i3.Konus();

  print(s1.sekrBilgi());
  s1.Konus();
  print((i4 as Sekreter).sekrBilgi());
  i4.Konus();
  */

}


