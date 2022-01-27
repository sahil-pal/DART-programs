
void main(List<String> args) {
  
  int sum = 0;
  for(int i = 0; i < args.length; i++){
    sum += int.parse(args[i]);
  }
  print("Sum is = $sum");

}