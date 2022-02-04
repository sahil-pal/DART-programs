import 'student.dart';

void main(){

  Student s1 = Student.takeInput(rollNo: '265', name: "sAhIl pAl");
  s1.enterMarks('DBMS',90);
  s1.enterMarks('Java',80);
  s1.enterMarks('Dart',70);
  s1.printResult();

}