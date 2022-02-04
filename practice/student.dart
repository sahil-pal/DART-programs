class Student {
  static const String _college = "The Northcap University";

  String? _rollNo;
  String? _name;
  Map<String, int>? marks;
  String? _grade;
  double? _percentage;

  Student.takeInput({required String rollNo, required String name}) {
    this._rollNo = rollNo;
    this._name = getProperCase(name);
    marks = {};
    _grade = "";
    _percentage = 0.0;
  }

  Student.takeAllInput({required String rollNo, required String name, required Map<String,int> marks}) {
    this._rollNo = rollNo;
    this._name = getProperCase(name);
  }

  String enterMarks(String subject, int mark) {
    if (mark >= 0 && mark <= 100) {
      marks?.putIfAbsent(subject, () => mark);
      return "Marks = $mark successfully added for $name";
    } else {
      return "Addition failed. Please enter marks in 0-100 range";
    }
  }

  void _calcResult() {
    int totalmarksObtained = 0;
    int totalmaximumMarks = marks!.length * 100;

    marks!.forEach((k, v) => totalmarksObtained += v);

    this._percentage = totalmarksObtained / totalmaximumMarks * 100;

    if (this.percentage >= 90) {
      this.grade = "A";
    } else if (percentage >= 80) {
      this.grade = "B";
    } else if (percentage >= 70) {
      this.grade = "C";
    } else if(percentage >= 60) {
      this.grade = "D";
    }else{
      this.grade = "E";
    }
  }

  void printResult() {
    _calcResult();
    print(" ".padLeft(10));
    print(" ".padLeft(10)+"----------");
    print(" ".padLeft(5) + "${_college.toUpperCase()}");
    print(" ".padLeft(2) + "> Name : " + "$_name");
    print(" ".padLeft(2) + "> Subjects : " + "$marks");
    print(" ".padLeft(2) + "> Percentage : " + "$_percentage");
    print(" ".padLeft(2) + "> Grade : " + "$_grade");
    print(" ".padLeft(10)+"----------\n");

  }

  String getProperCase(String input) {
    List<String> splitName = input.split(" ");
    StringBuffer sb = new StringBuffer();
    for (int i = 0; i < splitName.length; i++) {
      sb.write(splitName[i].substring(0, 1).toUpperCase() +
          splitName[i].substring(1, splitName[i].length).toLowerCase() +
          " ");
    }
    return sb.toString();
  }

  get rollNo => this._rollNo;

  set rollNo(value) => this._rollNo = value;

  get name => this._name;

  set name(value) => this._name = value;

  get getMarks => this.marks;

  set setMarks(marks) => this.marks = marks;

  get grade => this._grade;

  set grade(value) => this._grade = value;

  get percentage => this._percentage;

  set percentage(value) => this._percentage = value;
}
