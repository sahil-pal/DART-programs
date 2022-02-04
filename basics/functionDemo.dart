
import 'dart:io';

void main(){

  //int x = int.parse(stdin.readLineSync().toString());
  String x = "1010";
  int base = 2;
  print(getConvertedIntoDecimal(x, base));
}

String getConvertedIntoDecimal(String x,int base){
  return int.parse(x,radix: base).toRadixString(10);
}