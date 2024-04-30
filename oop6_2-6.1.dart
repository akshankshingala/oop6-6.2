import 'dart:io';
class StudentDetails{
  late int id;
  late String name;
  late int age;
  late String course;
  late int marks;

  void setStudentDetails(){
    stdout.write("Enter Student ID : ");
    id = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Student Name : ");
    name = stdin.readLineSync()!;
    stdout.write("Enter Student Age : ");
    age = int.parse(stdin.readLineSync()!);
    stdout.write("Enter Student Course : ");
    course = stdin.readLineSync()!;
    stdout.write("Enter Student Marks : ");
    marks = int.parse(stdin.readLineSync()!);
  }
  void header(){
    print("ID\tName\tAge\tCourse\tMarks"); 
  }
  void getStudentDetails(){
    print("$id\t$name\t$age\t$course\t$marks");
  }
}

void main(){
  int sum = 0;
  stdout.write("Enter number of students : ");
  int length = int.parse(stdin.readLineSync()!);
  List<StudentDetails> students = List.generate(length, (index) {
    StudentDetails student = StudentDetails();
    student.setStudentDetails();
    sum+=student.marks;
    return student;
  });

  print("Student Details:");
  students[0].header();
  students.forEach((student) => student.getStudentDetails());
  double average = sum/length;
  print("The Average Marks of the all $length Students is : $average");
}