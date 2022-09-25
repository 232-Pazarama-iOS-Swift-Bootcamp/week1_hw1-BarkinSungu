//
//  main.swift
//  hw1
//
//  Created by Barkın Süngü on 25.09.2022.
//

import Foundation

struct User{
    let name:String
    let type:String
}

let types = ["gözlüklü", "şirine", "şirin baba", "güçlü", "usta"]
let products = ["gözlüklü": "gözlük", "şirine": "ayakkabı", "şirin baba": "kırmızı şapka", "güçlü": "ağırlık", "usta": "çekiç"]
let commonProducts = ["pasta", "şampuan", "sepet", "top"]

let user = Registration()
MainPage(user: user)

func Registration() -> User{
    print("Hepsini Şirinleye Hoşgeldiniz!")
    print("Lütfen Kayıt olunuz!")
    
    print("İsim: ")
    let isim = input()
    
    print("Bu şirinlerden biri olmalısınız.: ")
    print(types)
    print("Hangi Şirinsin: ")
    let type = input()

    return User(name: isim, type: type)
}

func MainPage(user: User){
    print("Hepsini Şirinlede tüm ihtiyaçlarını bulabilirsin! İşlem yapmak istediğin ürünü seç!")
    var myList: [String] = []
    myList.append(products[String(user.type)] ?? "")
    print("Test için bu satır: \(user.type)")
    for i in commonProducts{
        myList.append(i)
    }
    
    for i in myList{
        print(i)
    }
    
    var isSelected = false
    var product = ""
    
    while !isSelected{
        print("bir ürün seç:")
        product = input()
        print("Seçilen ürün: \(product)")
        if myList.contains(product){
            isSelected = true
        }
        
    }
    
    print("\(product) için 5 şirin çileği ödemelisiniz nakit içi N yazın çilekeş kart için ne yazarsanız yazın.")
    let odeme = input()
    
    print("Teşekkür ederiz yine bekleriz.")
}





func input() -> String {
    var keyboard = FileHandle.standardInput
    var inputData = keyboard.availableData
    return NSString(data: inputData, encoding:String.Encoding.utf8.rawValue)! as String
}

