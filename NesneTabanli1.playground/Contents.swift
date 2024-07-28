import UIKit

class Araba {
    var renk:String?
    var hiz:Int?
    var calisiyorMu:Bool?
    
    init(){
        print("Boş constructor")
    }
    
    init(renk: String? = nil, hiz: Int? = nil, calisiyorMu: Bool? = nil) {
        // self -> bulunduğu sınıfı temsil eder
        self.renk = renk
        self.hiz = hiz
        self.calisiyorMu = calisiyorMu
    }
    
    // Side Effect -> Fonksiyon ile Class'ın değerlerini değişme durumu
    func calistir(){
        calisiyorMu = true
        hiz = 5
    }
    
    func durdur(){
        calisiyorMu = false
        hiz = 0
    }
    
    func hizlan(kacKm:Int){
        hiz!+=kacKm
    }
    
    func yavasla(kacKm:Int){
        hiz!-=kacKm
    }
    
    func bilgiAl(){
        print("---------------")
        print("Renk : \(renk!)")
        print("Hız : \(hiz!)")
        print("Çalışıyor Mu : \(calisiyorMu!)")
    }
}

// Nesne Oluşturma
var bmw = Araba()

//Değer Atama
bmw.renk = "Kırmızı"
bmw.hiz = 100
bmw.calisiyorMu = true

var sahin = Araba()

sahin.renk = "Beyaz"
sahin.hiz = 0
sahin.calisiyorMu = false

// Değer Okuma
print("---------------")
print("BMW Renk : \(bmw.renk!)")
print("BMW Hız : \(bmw.hiz!)")
print("BMW Çalışıyor Mu : \(bmw.calisiyorMu!)")

print("---------------")
print("Şahin Renk : \(sahin.renk!)")
print("Şahin Hız : \(sahin.hiz!)")
print("Şahin Çalışıyor Mu : \(sahin.calisiyorMu!)")

bmw.bilgiAl()
bmw.durdur()
bmw.hizlan(kacKm: 10)
bmw.bilgiAl()
sahin.bilgiAl()
sahin.calistir()
sahin.yavasla(kacKm: 5)
sahin.bilgiAl()


// Constructor ile Değer Atama
var mercedes = Araba(renk:"Mavi",hiz: 200,calisiyorMu: true)
mercedes.bilgiAl()


class Fonksiyonlar {
    // geri dönüş değeri olmayan - void
    
    func selamla(){
        let sonuc = "Merhaba Ahmet"
        print(sonuc)
    }
    
    // geri dönüş değeri olan - return
    
    func selamla2() -> String{
        let sonuc = "Merhaba Ahmet"
        return sonuc
    }
    
    // Parametre -> void
    func selamla3(isim:String){
        print("Merhaba \(isim)")
    }
    
    // Parametre -> return
    func selamla4(isim:String)->String{
        return "Merhaba \(isim)"
    }
    
    func toplama(sayi1:Int, sayi2:Int) -> Int {
        return sayi1 + sayi2
    }
    
    // Overloading -> Fonksiyonların sınıf içerisinde tekrar tekrar kullanılması
    func carpma(sayi1:Int, sayi2:Int){
        print("Çarpma : \(sayi1 * sayi2)")
    }
    
    func carpma(sayi1:Int, sayi2:Int, sayi3:Int){
        print("Çarpma : \(sayi1 * sayi2 * sayi3)")
    }
}

var fonk = Fonksiyonlar();
fonk.selamla()
let data = fonk.selamla2()
print("Gelen sonuç : \(data)")
fonk.selamla3(isim: "Ahmet")
let parametre = fonk.selamla4(isim: "Ahmet")
print(parametre)
let sonucToplam = fonk.toplama(sayi1: 10, sayi2: 30)
print(sonucToplam)

fonk.carpma(sayi1: 20, sayi2: 30)
fonk.carpma(sayi1: 24, sayi2: 21, sayi3: 12)


// Static Değişkenler ve Metodlar
class ASinifi {
    static var x = 10
    static func metod(){
        print("Metod çalıştı")
    }
}

let a = ASinifi()
//a.metod()
//print(a.x)

//print(ASinifi().x) //Sanal nesne - virtual object - isimsiz nesne
//ASinifi().metod()

print(ASinifi.x)
ASinifi.metod()

// Enumeration

enum KonserveBoyut {
    case kucuk
    case orta
    case buyuk
}

func ucretHesapla(boyut: KonserveBoyut, adet:Int){
    switch boyut{
        case KonserveBoyut.kucuk: print("Fiyat : \(adet * 13) ₺")
        case .orta: print("Fiyat : \(adet * 24) ₺")
        case .buyuk: print("Fiyat : \(adet * 45) ₺")
    }
}

ucretHesapla(boyut: .orta, adet: 100)

// Composition
class Kategoriler {
    var kategori_id:Int?
    var kategori_ad:String?
    
    init(kategori_id: Int, kategori_ad: String) {
        self.kategori_id = kategori_id
        self.kategori_ad = kategori_ad
    }
}

class Yonetmenler {
    var yonetmen_id:Int?
    var yonetmen_ad:String?
    
    init(yonetmen_id: Int?, yonetmen_ad: String?) {
        self.yonetmen_id = yonetmen_id
        self.yonetmen_ad = yonetmen_ad
    }
}

class Filmler {
    var film_id:Int?
    var film_ad:String?
    var film_yil:Int?
    var kategori:Kategoriler?
    var yonetmen:Yonetmenler?
    
    init(film_id: Int?, film_ad: String?, film_yil: Int?, kategori: Kategoriler?, yonetmen: Yonetmenler?) {
        self.film_id = film_id
        self.film_ad = film_ad
        self.film_yil = film_yil
        self.kategori = kategori
        self.yonetmen = yonetmen
    }
}

let k1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram")
let k2 = Kategoriler(kategori_id: 2, kategori_ad: "Komedi")

let y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Quentin Tarantino")
let y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Christopher Nolan")

let f1 = Filmler(film_id: 1, film_ad: "Django", film_yil: 2013, kategori: k1, yonetmen: y1)

print("Film id : \(f1.film_id)")
print("Film ad : \(f1.film_ad)")
print("Film yıl : \(f1.film_yil)")
print("Film kategori : \(f1.kategori!.kategori_ad!)")
print("Film yönetmen : \(f1.yonetmen!.yonetmen_ad!)")
