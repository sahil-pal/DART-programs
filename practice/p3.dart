/*
1. Write following Functions
These Functions are working on NumberSystem
a) Decimal Number - Binary Conversion
b) Binary Number - Decimal Conversion
c) Decimal Number - Octal Conversion
d) Octal number - Decimal Conversion
e) Octal Number - Binary Conversion
f) Decimal Number - Hexa Conversion
g) Hexa Number - Decimal Conversion
h) Hexa Number - Binary Conversion


Create an Outer / Wrapper Function called e.g NS
NS Contains a) to h) functions  and based on the argument u pass to NS function it return the required function, After getting the required function from NS , we pass that function to printNS function , this function is responsible to invoke the required Number System Function and get the result and return that result to the main function. The Base 2,8,16 is the common thing for all the Number System Functions.
main print the final result.

We are able to See : Outer Inner function concept
Callback Function
Function return function
Closure
*/


import 'dart:io';
void main() {
  
  print(" ".toString().padLeft(5)+"---Enter Choice---");
  print(" ".toString().padLeft(5)+"[1] Decimal to Binary");
  print(" ".toString().padLeft(5)+"[2] Binary to Decimal");
  print(" ".toString().padLeft(5)+"[3] Decimal to Octal");
  print(" ".toString().padLeft(5)+"[4] Octal to Decimal");
  print(" ".toString().padLeft(5)+"[5] Octal to Binary");
  print(" ".toString().padLeft(5)+"[6] Decimal to Hexa");
  print(" ".toString().padLeft(5)+"[7] Hexa to Decimal");
  print(" ".toString().padLeft(5)+"[8] Hexa to Binary\n");
  
  int choice = int.parse(stdin.readLineSync().toString());
  
  print(" ".toString().padLeft(10)+"---Enter Input---");
  String x = stdin.readLineSync().toString();
  int base = 0;
  
  switch(choice){
    case 1 :{
        base = 10;
        break;
    }
    case 2 : {
        base = 2;
        break;
    }
    case 3 :{
         base = 10;
         break;
    }
    case 4 : {
        base = 8;
        break;
    }
    case 5 :{
         base = 8;
         break;
    }
    case 6 : {
        base = 10;
        break;
    }
    case 7 :{
        base = 16;
        break;
    }
    case 8 : {
        base = 16;
        break;
    }
    default : {
      print("Pls. Enter a correct choice ");
    }      
  }

  List<Function> operations = Converter(base);
  printResult(operations[choice-1],x);
}

void printResult(Function fn,String x){
  print(fn(x));
}

List<Function> Converter(int base){
  
  Function decToBin = (String x){
    return int.parse(x,radix: base).toRadixString(2);
  };
  Function binTodec = (String x){
    return int.parse(x,radix: base).toRadixString(10);
  };
  Function decToOct = (String x){
    return int.parse(x,radix: base).toRadixString(8);
  };
  Function octToDec = (String x){
    return int.parse(x,radix: base).toRadixString(10);
  };
  Function octToBin = (String x){
    return int.parse(x,radix: base).toRadixString(2);
  };
  Function decToHex = (String x){
    return int.parse(x,radix: base).toRadixString(16);
  };
  Function hexToDec = (String x){
    return int.parse(x,radix: base).toRadixString(10);
  };
  Function hexToBin = (String x){
    return int.parse(x,radix: base).toRadixString(2);
  };

  return [decToBin,binTodec,decToOct,octToDec,octToBin,decToHex,hexToDec,hexToBin];
}
