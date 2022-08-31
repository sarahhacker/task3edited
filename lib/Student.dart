// ignore: file_names
class Person {
  late String n;
  late int id;
  late int age;
  late String addr;

  Person({
    required this.n,
    required this.id,
    required this.age,
    required this.addr,
  });

  printData(String stud) {
    print("Student's name is: $n ,id: $id, age: $age, address: $addr");
  }
}

class Student extends Person {
  int phoneNum;
  String email;
  Map<String, double> subjects;

  Student({
    required id,
    required name,
    required age,
    required address,
    required this.phoneNum,
    required this.email,
    required this.subjects,
  }) : super(
          n: name,
          id: id,
          age: age,
          addr: address,
        );

  @override
  printData() {
    print(super.printData() + ",email $email, phone $phoneNum ");
  }

  addSubject(String subj, double deg) {
    subjects[subj] = deg;
  }

  showSubjects() {
    print("Grades: ");
    subjects.forEach(((key, value) => print(" $key : $value")));
  }
}
