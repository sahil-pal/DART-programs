// Encapsulation - Binding Variable and Functions into a Single Unit , and this unit is called class.
// Good Encapsulation- private Variables and public Functions.
class Employee {
  // Pascal case // class name Noun
  // Instance Variable
  late int _id;
  late String _name;
  late double _salary;
  String? _phone;
  String? _email;
  String? _repoOfficer;
  String? _city;
  get id => this._id;

  //set id( value) => this._id = value;

  get name => this._name;

  set name(value) => this._name = value;

  get salary => this._salary;

  set salary(value) => this._salary = value;

  get phone => this._phone;

  set phone(value) => this._phone = value;

  get email => this._email;

  set email(value) => this._email = value;

  get repoOfficer => this._repoOfficer;

  set repoOfficer(value) => this._repoOfficer = value;

  get city => this._city;

  set city(value) => this._city = value;
  /*
  One type of Constructor
  Constructor - Same Name as a Class name
  Every class has default constructor by default and it is empty by default
  default constructor no args constructor
  */
  Employee() {
    _id = 0;
    _name = "";
    _salary = 0.0;
    print("Default Cons Call");
  }
  // Short Hand Version
  // Second Type - Named Constructor with ShortHand
  Employee.takeInput(
      {required int id,
      required String name,
      required double salary,
      String phone = "",
      String email = "",
      String city = ""}) {
    _id = id;
    _name = name;
    _salary = salary;
    _phone = phone;
    _email = email;
    _city = city;
  }

  Employee.takeTwo(this._id, this._name, [this._salary = 0]);

  // Employee(int id, String name, double salary) {
  //   print("i am a Param Cons");
  //   this._id = id;
  //   _name = name;
  //   _salary = salary;
  // }

  // void takeInput(int id, String name, double salary) {
  //   // Args - Local Variable
  //   // Instance var = Local var
  //   // this - it is a keyword , hold current calling object reference
  //   // e.g ram.takeInput(1001, "Ram",9999); // ram is a current calling object
  //   // now it store the address of ram in this keyword
  //   if (id <= 0 || salary <= 0) {
  //     print("Wrong Input ");
  //     return; // exit from the function
  //   }
  //   this._id = id;
  //   this._name = name;
  //   this._salary = salary;
  // }

  void printEmployee() {
    print("Id ${this._id} Name $_name Salary $_salary");
  }
}
