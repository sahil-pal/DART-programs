import './emp.dart';

void test(List<dynamic> args) {
  print(args);
}

void main() {
  test([
    10,
    20,
    true,
    false,
    [10, 90]
  ]);
  //Employee ram = Employee(); // Calling Default constructor
  //Employee ram = Employee.takeInput(1001, "ram", 9090);
  Employee ram = Employee.takeInput(
      name: "Ram", id: 1001, salary: 89787, email: "ram@yahoo.com");
  ram.city = 'Delhi'; // call setter
  print(ram.city);
  ram.salary = ram.salary! + 45455.0;
  //ram.takeInput(-1001, "Ram", -9000);

  // ram._id = -1001;
  // ram._name = "Ram";
  // ram._salary = -88888;
  ram.printEmployee();
  // print(ram.id);
  // print(ram.name);
  // print(ram.salary);
}
