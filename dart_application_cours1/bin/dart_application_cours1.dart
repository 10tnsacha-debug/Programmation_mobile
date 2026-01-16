/* String foo(String name,int number, bool toUpperCase) => '${(toUpperCase ? name.toUpperCase() : name)} $number';

void useFoo(){
  foo(name: 'a');
  foo(name: 'b', number:1);
  foo(name: 'c', toUpperCase: true);
  foo(name: 'c',number:2 , toUpperCase: true);

}

void main (){
  List <int> l = [1, 2, 3];

  if (true){
    l.add(4);
  }

  List<int> l1 = [1,2,3 if (true) 4, ?a];
}
*/


