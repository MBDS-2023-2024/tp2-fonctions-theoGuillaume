//fonction qui affiche les x premiers nombres pairs ou impairs
func afficherNombresPairsOuImpairs(x: Int, paire: Bool) {
  var count = 0
  var nombre = 0
  while count < x {
      if paire {
          if nombre % 2 == 0 {
              print(nombre)
              count += 1
          }
      } else {
          if nombre % 2 != 0 {
              print(nombre)
              count += 1
          }
      }
      nombre += 1
  }
}

//test
print("Affiche les 5 premiers nombres pairs")
afficherNombresPairsOuImpairs(x: 5, paire: true)
print("Affiche les 5 premiers nombres impairs")
afficherNombresPairsOuImpairs(x: 5, paire: false) 



//fonction qui affiche les x premiers nombres de la suite Fibonacci
func afficherSuiteFibonacci(x: Int) {
    var a = 0
    var b = 1
    for _ in 0..<x {
        print(a)
        let temp = a
        a = b
        b = temp + b
    }
}

//test
print("Affiche les 10 premiers nombres de la suite de Fibonacci")
afficherSuiteFibonacci(x: 10) 

//fonction qui calcule le factoriel d’un nombre x, utilisation de  10 par défaut si aucun nombre n’est spécifié

func calculerFactoriel(nombre: Int = 10) -> Int {
    if nombre == 0 {
        return 1
    }
    var resultat = 1
    for i in 1...nombre {
        resultat *= i
    }
    return resultat
}

// test
print("Affiche le factoriel de 10 - par defaut ") 
print(calculerFactoriel()) 
print("Affiche le factoriel de 5")
print(calculerFactoriel(nombre: 5)) 


//fonction qui affiche les x premiers nombres premiers
func estPremier(_ n: Int) -> Bool {
    if n <= 1 {
        return false
    }
    for i in 2..<n {
        if n % i == 0 {
            return false
        }
    }
    return true
}

func afficherNombresPremiers(x: Int) {
    var count = 0
    var nombre = 2
    while count < x {
        if estPremier(nombre) {
            print(nombre)
            count += 1
        }
        nombre += 1
    }
}

// test
print("Affiche les 10 premiers nombres premiers")
afficherNombresPremiers(x: 10) 