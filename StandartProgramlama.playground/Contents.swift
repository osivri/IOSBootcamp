import UIKit

// Karşılaştırma operatörleri

var a = 40
var b = 50

var x = 90
var y = 80

print("a == b : \(a==b)")
print("a != b : \(a != b)")
print("a > b : \(a>b)")
print("a < b : \(a<b)")
print("a <= b : \(a<=b)")
print("a >= b : \(a>=b)")

print("a > b || x > y : \(a > b || x > y)")
print("a > b && x > y : \(a > b && x > y)")


// If

var yas = 17
var isim = "Mehmet"

if yas >= 18 {
    print("Reşitsiniz")
}else{
    print("Reşit Değilsiniz")
}


if isim == "Ahmet"{
    print("Merhaba Ahmet")
}else if isim == "Mehmet"{
  print("Merhaba Mehmet")
} else {
    print("Tanınmayan Kişi")
}

var ka = "admin"
var s = "1234567"

if ka == "admin" && s == "123456"{
    print("Giriş Başarılı")
} else {
    print("Hatalı Giriş")
}

var sonuc = 9
if sonuc == 9 || sonuc == 10 {
    print("Sonuç 9 veya 10 dur")
} else {
    print("Sonuç 9 veya 10 değildir")
}

// Switch
var gun = 3

switch gun {
    case 1: print("Pazartesi")
    case 2: print("Salı")
    case 3: print("Çarşamba")
    case 4: print("Perşembe")
    case 5: print("Cuma")
    case 6: print("Cumartesi")
    case 7: print("Pazar")
    default: print("Böyle bir gün yok")
}

// Döngüler
for x in 1...3{
    print("Döngü 1 : \(x)")
}

// 10-20 arası 5'er artış
for a in stride(from: 10, through: 20, by: 5) {
    print("Döngü 2 : \(a)")
}


// 20-10 arası 5'er azalış
for b in stride(from: 20, through: 10, by: -5) {
    print("Döngü 3 : \(b)")
}

var sayac = 1

while sayac < 4{
    print(sayac)
    sayac+=1
}

// continue koşulu pas geçer, devam eder
for i in 1...5 {
    if i == 3{
        continue
    }
        
    print("i : \(i)")
}

// Break döngüyü durdurur
for i in 1...5 {
    if i == 4 {
        break
    }
        
    print("i : \(i)")
}
