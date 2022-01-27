
main(List<String> args) {
 
 int x;
 x = 100000000;
 print(x.runtimeType.runtimeType);
 
 double y = 3.232;
 print(y.runtimeType.runtimeType);

 int z = int.parse("2132",radix: 16); // not dependent on obj
 bool i = true;
 String j = "Sahil";

 print("$z $i $j");

  x.toString(); // dependent on obj x

  // you can call function either through type or obj
}