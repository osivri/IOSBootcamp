import UIKit

// Optional == Nullable = Null Safety
// Tanımlama
var mesaj = "Merhaba"

// Daha sonradan değer atamak için! Diğer dillerde null
var str:String? = nil
//veya
var str1:String?

str = "Merhaba"

if str != nil {
    print(str!) // Unwrap
}else {
    print("nil değer içeriyor")
}

// Optional Binding

if let temp = str {
    print(temp) // Otomatik Unwrap
}else{
    print("str nil değer içeriyor")
}


if let temp = str {
    print(temp) // Otomatik Unwrapxs
}else{
    print("str nil değer içeriyor")
}
