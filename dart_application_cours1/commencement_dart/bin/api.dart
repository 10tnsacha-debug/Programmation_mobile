
// Découvrir les APIs //

void main (){

//Créez une liste contenant uniquement les entiers 25, 42, 79, 12//
  final list1 = [25, 42, 79, 12];

// Triez cette liste par ordre décroissant //
list1.sort((a, b) => b.compareTo(a));

// Multipliez chaque élément de la liste par 2 avec map//
final double = list1.map((n) => n * 2).toList();
print('Element de la liste multiplé par 2 -> $double'); 

// Utilisez la méthode where pour retourner uniquement les nombres pairs de la liste //
final pairs = double.where((n) => n.isEven).toList();
  print('Nombre pairs de la liste -> $pairs'); 

}

// Correction //

/*
void main (){

//Créez une liste contenant uniquement les entiers 25, 42, 79, 12//
Liosrt = [25, 42, 79, 12];

// Triez cette liste par ordre décroissant //
list1.sort((a, b) => b.compareTo(a));

// Multipliez chaque élément de la liste par 2 avec map//
final double = list1.map((n) => n * 2).toList();
print('Element de la liste multiplé par 2 -> $double'); 

// Utilisez la méthode where pour retourner uniquement les nombres pairs de la liste //
final pairs = double.where((n) => n.isEven).toList();
  print('Nombre pairs de la liste -> $pairs'); 

}

 */