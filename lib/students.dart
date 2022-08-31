import 'Student.dart';

class Students {
  List<Student> students = [];

  allData() {
    for (Student stud in students) {
      stud.printData();
    }
  }

  addStudent(Student stud) {
    students.add(stud);
  }

  removeStudent(id) {
    students.removeWhere((element) => element.id == id);
    /*var s = students.indexWhere((element) => element.id == id);
    if (s != -1) {
      students.removeAt(s);
    }*/
  }

  updateSubject(int id, String subj, double deg) {
    Student stud = students.firstWhere((element) => element.id == id);
    stud.addSubject(subj, deg);
  }

  calcGrade(id) {
    //get the first element that satisfies the given
    Student stud = students.firstWhere((element) => element.id == id);
    stud.subjects.forEach((key, value) {
      if (value >= 50) {
        print("Subject: $key --> Succeeded");
      } else {
        print("Subject: $key --> failed");
      }
    });
  }
}
