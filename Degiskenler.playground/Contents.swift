import UIKit

var ogrenciAdi = "Ahmet"
var ogrenciYas = 25
var ogrenciBoy = 1.78
var ogrenciBasharf = "A"
var ogrenciDevamEdiyorMu = true

print(ogrenciAdi)
print(ogrenciYas)
print(ogrenciBoy)
print(ogrenciBasharf)
print(ogrenciDevamEdiyorMu)

var urun_id:Int = 3416
var urun_adi:String = "Macbook Pro"
var urun_adet:Int = 100
var urun_fiyat:Int = 34999
var urun_tedarikci:String = "Apple"

print("Ürün Id : \(urun_id)")
print("Ürün Ad : \(urun_adi)")
print("Ürün Adet : \(urun_adet)")
print("Ürün Fiyat : \(urun_fiyat) ₺")
print("Ürün Tedarikçi : \(urun_tedarikci)")

// Constant - Sabitler

// let ile kullanılır

var sayi = 10
print(sayi)
sayi = 20
print(sayi)
let sayi1 = 20
print(sayi1)
//sayi1 = 40 // Hata verir! Sabit olduğu için değişemez.

// Tür Dönüşümü - Type Casting
// Sayısaldan Sayısala
var i = 42
var d = 56.78

var sonuc1 = Double(i)
var sonuc2 = Int(d)
print(sonuc1)
print(sonuc2)

// Sayısaldan Metine
var sonuc3 = String(i)
var sonuc4 = String(d)

print(sonuc3)
print(sonuc4)

// Metinden Sayısala
var yazi = "34"
if let sonuc5 = Int(yazi){
    print(sonuc5)
}else{
    print("Dönüşüm Hatası")
}



