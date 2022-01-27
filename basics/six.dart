void main(){

  String name1 = "sahil"; // Sting literal
  String name2 = 'sahil';
  String msg1 = 'Hello'
    'How'
    'Are'
    'You?'; // will be considered as single String known as Adjacent String

  String msg2 = '''Multi 
  line 
  String''';
  String msg3 = """Multi 
  line 
  String""";

  print(name1[0]); // 0th index char
  print(name1.codeUnitAt(2)); // get sci code
  print(name1.codeUnits);
  print(name2[0].codeUnits); // get sci code
  print(msg1 is String);
  

}