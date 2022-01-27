/*
1. Enter a String
input : heLLo HOW aRE yOU
output : Hello How Are You

2. input : Hello How are You
Output : Word Count  = 4

3. Palindrome String 
input : nitin
output: Palindrome String

note: Input Either Command line Arguments or Either Use stdin
*/
import 'dart:io';

void main(){

  String? message = stdin.readLineSync();
  if(message != null){

    // Q1
    // List<String> messages = message.split(" ");
    // StringBuffer sb = new StringBuffer();
    // for(int i = 0; i < messages.length; i++){
    //   sb.write(messages[i].substring(0,1).toUpperCase() + messages[i].substring(1,messages[i].length).toLowerCase()+" ");
    // }
    // message = sb.toString();
    // print('Output = '+message);
    // print('Word count = '+messages.length.toString());

    // Q2
    // --> space complexity (n = length of input)
    // List<String> rev = message.split('');
    // if(message == rev.reversed.join()){
    //   print('Palindrome');
    // }
    // else{
    //   print('Not Palindrome');
    // }

    // time complexity O(n)
    // int i = 0;
    // bool flag = true;
    // for(int j = message.length-1; j >= 0; j--){
    //   if(message[j] != message[i]){
    //     flag = false;
    //     break;
    //   }
    //   i++;
    // }
    // if(flag){
    //   print('Palindrome');
    // }
    // else{
    //   print('Not Palindrome');
    // }

  }

}
