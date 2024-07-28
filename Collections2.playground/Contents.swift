import UIKit

// Set -> Sıralama karışık. Var olan eleman tekrar eklenemez

var meyveler = Set<String>()

// Veri Ekleme
meyveler.insert("Elma")
meyveler.insert("Portakal")
meyveler.insert("Muz")

print(meyveler)

meyveler.insert("Kivi")
print(meyveler)

for meyve in meyveler {
    print("Sonuç : \(meyve)")
}

for (indeks,meyve) in meyveler.enumerated() {
    print("Sonuç : \(indeks). -> \(meyve)")
}

print("Boyut : \(meyveler.count)")
print("Boş Mu? : \(meyveler.isEmpty)")
meyveler.remove("Elma")
meyveler.removeAll()
print(meyveler)


// Dictionary - Map
var iller = [Int:String]()

// Veri Ekleme
iller[16] = "Bursa"
iller[34] = "İstanbul"
print(iller)

// Veri Okuma
print(iller[16]!)

// Veri Güncelleme
iller[16] = "Yeni Bursa"
print(iller)

for (anahtar, deger) in iller{
    print("\(anahtar) -> \(deger)")
}




