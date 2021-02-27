let nombreAnimes = ["One Piece","Dragon Ball","Naruto","Sworth Art Online","Shingeki no Kiogin"]

//Formas de iterar un arreglo
for index in 0...nombreAnimes.count - 1{
    print(index+1,nombreAnimes[index])
}

print("--------------------")
for index in 0..<nombreAnimes.count{
    print(index+1,nombreAnimes[index])
}

print("--------------------")
for index in nombreAnimes.indices{
    print(index+1,nombreAnimes[index])
}

print("--------------------")
for anime in nombreAnimes{
    print(anime)
}


print("--------------------")
for anime in nombreAnimes{
    print(nombreAnimes.firstIndex(of: anime)!,anime) //Saca el indice
}

print("--------------------")
for (index,anime) in nombreAnimes.enumerated(){ //aquie se hace una tupla
    print(index,anime)
}
print("--------------------")
//Arreglos no homogeneos

let malaData: [Any] = [0,1,2,"hola"] //Un arreglo Any puede tener cualquier data
print(malaData)

print("--------------------")
for data in malaData{
    print(data) //Se imprime como Any
}

print("--------------------")
let malaDataUno = malaData[0] as! Int
let malaDataDos = malaData[1] as! Int
let malaDataTres = malaData[3] as? Int ?? 0
print(malaDataUno+malaDataDos, malaDataTres)
