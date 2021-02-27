// Conjuntos -- SETS

var nones = Set<Int>()

for i in stride(from: 1, through: 10, by: 2){
    nones.insert(i)
}

print(nones.count,nones)

nones.insert(7)
nones.insert(11)
print(nones.count, nones)

nones.remove(7)
print(nones.count, nones)

print(nones.isEmpty)
print(nones.contains(7))
print(nones.contains(5))

var primos: Set = [2, 3, 5, 7, 11]

print(primos.isSubset(of: nones))
print(primos.isDisjoint(with: nones))

let union = primos.union(nones)
print(primos, nones, union)

let intersection = primos.intersection(nones)
print(primos, nones, intersection)

let diferencia = primos.subtracting(nones)
print(primos, nones, diferencia)
