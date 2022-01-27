import 'dart:io';

void main(){

  List<int> input = [1,2,3,5,1];

  //Q1
  // --> given range of element is 0-10; time complexity = O(n) and space complexity = O(1)
  // List<int> count = new List.filled(10, 0);
  // for(int i = 0; i < input.length; i++){
  //   count[input[i]]++;
  // }
  // bool flag = true;
  // for (int j = 0; j < count.length; j++){
  //   if(count[j] > 1){
  //     flag = false;
  //   }
  // }
  // if(flag){
  //   print('Unique list');
  // }
  // else{
  //   print('Non - uinque List');
  // }

  // --> String approach; time complexity = O(n)
  // String inputStr = input.join();
  // print(inputStr);
  // bool flag = true;
  // for(int i = 0; i < inputStr.length; i++){
  //   if(inputStr.substring(0,i).contains(inputStr[i]) || inputStr.substring(i+1,inputStr.length).contains(inputStr[i])){
  //     flag = false;
  //   }
  // }
  // if(flag){
  //   print("Unique List");
  // }
  // else{
  //   print("Non - Uinque List");
  // }

  // --> Map approach


  //Q2
  
  input = [1,2,5,7,3,6,11]; // 1,2,3,5,6,7
  input.sort();
  
  // missing element should be one only.
  // int expected = 1;
  // for(int i = 0; i < input.length; i++){
  //   //print('input is ${input[i]} and expected is $expected ');
  //   if(input[i] != expected){
  //     print('missing : $expected');
  //     expected++;
  //   }
  //   expected++;
  // }

  // if missing element are more than one
  // int expected = 1;
  // for(int i = 0; i < input[input.length-1]; i++){
  //   if(!input.contains(expected)){
  //     print("Missing  :  $expected");
  //   }
  //   expected++;
  // }

  //Q3
  String input1 = "silent";
  String input2 = "listen";
  bool flag = true;
  for(int i = 0 ; i < input1.length; i++){
    if(!input2.contains(input1[i])){
      flag = false;
    }
  }
  if(flag){
    print('yes, Anagram String');
  }
  else{
    print('Not an Anagram String');
  }

}