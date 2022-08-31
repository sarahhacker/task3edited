import 'dart:io';
//import 'package:task3final/task3final.dart' as task3final;
import 'package:task3final/Student.dart';
import 'package:task3final/students.dart';

void main(List<String> arguments) {
  Students st = Students();
  bool z = true;

  loop:
  while (z) {
    print('Choose the process you want');
    print(
        'processes: 1. add student, 2. remove student, 3. update student subject, 4. add new degree, 5. show grade, 6. All data, 7. exit');
    var process = int.parse(stdin.readLineSync()!);

    switch (process) {
      case 1:

        //add student
        print('Enter the data: [id, name, age, address, phone, email]');
        var inputdata = stdin.readLineSync()!.split('-');

        Student ss = Student(
            id: int.parse(inputdata[0]),
            name: inputdata[1],
            age: int.parse(inputdata[2]),
            address: inputdata[3],
            phoneNum: int.parse(inputdata[4]),
            email: inputdata[5],
            subjects: {});
        st.addStudent(ss);

        break;

      case 2:
        //remove student
        print("Enter student id: ");
        var input = int.parse(stdin.readLineSync()!);
        st.removeStudent(input);
        break;

      case 3:
        //update subject (add)
        print("Enter Student id, Subject: ");
        var input = stdin.readLineSync()!.split('-');
        st.updateSubject(int.parse(input[0]), input[1], 0.0);
        break;

      case 4:
        //add subject degree
        print('Enter id, Subject name , Degree: ');
        print(
            "Subject (1. Networks, 2. Computerintro, 3. Programming, 4. Datascience, 5. AI");
        var input = stdin.readLineSync()!.split('-');
        st.updateSubject(int.parse(input[0]), input[1], double.parse(input[2]));
        break;

      case 5:
        //show student grades
        print('Enter Student id: ');
        var input = int.parse(stdin.readLineSync()!);
        st.calcGrade(input);
        break;

      case 6:
        //print all data
        st.allData();
        break;

      case 7:
        break loop;

      default:
        print('try again with valid data...');
    }
  }
}
