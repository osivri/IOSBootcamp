import UIKit

// Array Kullanımı
var numaralar = [10, 20, 30]
var meyveler = [String]()

// Veri Ekleme
meyveler.append("Elma") // 0.
meyveler.append("Muz") //1.
meyveler.append("Kiraz") // 2.

print(meyveler)


// Güncelleme
meyveler[0] = "Yeni Elma"
print(meyveler)

// Insert -> İstenilen yere ekler

meyveler.insert("Portakal", at: 1)
print(meyveler)

// Veri Okuma
print(meyveler[1])

let m = meyveler[0]
print(m)

print("Boyut : \(meyveler.count)")
print("Boş kontrol : \(meyveler.isEmpty)")

for meyve in meyveler{
    print("Sonuç 1 : \(meyve)")
}

for (indeks, meyve) in meyveler.enumerated(){
    print("Sonuç 1 : \(meyve)")
}

//Silme
meyveler.remove(at: 1)
print(meyveler)

meyveler.removeAll()
print(meyveler)

// Nesne Tabanlı
class Ogrenciler {
    var no: Int?
    var ad:String?
    var sinif:String?
    
    init(no: Int, ad: String, sinif: String) {
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
}

var o1 = Ogrenciler(no: 200, ad: "Ahmet", sinif: "9C")
var o2 = Ogrenciler(no: 300, ad: "Mehmet", sinif: "11Z")
var o3 = Ogrenciler(no: 400, ad: "Ali", sinif: "12A")

var ogrencilerListesi = [Ogrenciler]()
ogrencilerListesi.append(o1)
ogrencilerListesi.append(o2)
ogrencilerListesi.append(o3)

for o in ogrencilerListesi {
    print("No : \(o.no!)")
    print("Ad : \(o.ad!)")
    print("Sınıf : \(o.sinif!)")
}

// Filtreleme
var f1 = ogrencilerListesi.filter({ $0.no! > 100 && $0.no! < 250 })
print("Filtreleme 1")
for o in f1 {
    print("No : \(o.no!)")
    print("Ad : \(o.ad!)")
    print("Sınıf : \(o.sinif!)")
}


var f2 = ogrencilerListesi.filter({ $0.ad!.contains("me") })
print("Filtreleme 2")
for o in f2 {
    print("No : \(o.no!)")
    print("Ad : \(o.ad!)")
    print("Sınıf : \(o.sinif!)")
}

// Sıralama - Sorting

var s1 = ogrencilerListesi.sorted(by: { $0.no! > $1.no! } )
print("Sayısal büyükten küçüğe")
for o in s1 {
    print("No : \(o.no!)")
    print("Ad : \(o.ad!)")
    print("Sınıf : \(o.sinif!)")
}

var s2 = ogrencilerListesi.sorted(by: { $0.no! < $1.no! } )
print("Sayısal küçükten büyüğe")
for o in s2 {
    print("No : \(o.no!)")
    print("Ad : \(o.ad!)")
    print("Sınıf : \(o.sinif!)")
}

var s3 = ogrencilerListesi.sorted(by: { $0.ad! > $1.ad! } )
print("Metinsel büyükten küçüğe")
for o in s3 {
    print("No : \(o.no!)")
    print("Ad : \(o.ad!)")
    print("Sınıf : \(o.sinif!)")
}

var s4 = ogrencilerListesi.sorted(by: { $0.ad! < $1.ad! } )
print("Metinsel küçükten büyüğe")
for o in s4 {
    print("No : \(o.no!)")
    print("Ad : \(o.ad!)")
    print("Sınıf : \(o.sinif!)")
}

