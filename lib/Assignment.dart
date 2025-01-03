abstract class Role {
  void displayRole();
}

class Person extends Role {
  String name, address;
  int age;

  Person(this.name, this.age, this.address);
  @override
  void displayRole() {

  }
}

class Student extends Person {
  String studentID;
  String grade;
  List<double> courseScores;

  Student(
      String name,
      int age,
      String address,
      this.studentID,
      this.grade,
      this.courseScores)
      : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Student");
  }

  double calculateAvgScr() {
    if (courseScores.isEmpty) return 0.0;
    double total = courseScores.reduce((a, b) => a + b);
    return total / courseScores.length;
  }
}

class Teacher extends Person {
  String teacherID;
  List<String> coursesTaught;

  Teacher(String name, int age, String address, this.teacherID, this.coursesTaught)
      : super(name, age, address);

  @override
  void displayRole() {
    print("Role: Teacher");
  }

  void displayCoursesTaught() {
    print("Courses Taught:");
    for (String course in coursesTaught) {
      print("- $course");
    }
  }
}

class StudentManagementSystem {
  void main() {
    Student student = Student( "John Doe", 20, "123 Main St",  "S123", "A", [90, 85, 82],);
    print("Student Information: \n");
    student.displayRole();
    print("Name: ${student.name}\nAge: ${student.age}\nAddress: ${student.address}");
    print("Average Score: ${student.calculateAvgScr().toStringAsFixed(1)}");

    print("\n");

    Teacher teacher = Teacher(
      "Mrs. Smith",
      35,
      "456 Oak St",
      "T456",
      ["Math", "English", "Bangla"],
    );

    print("Teacher Information: \n");
    teacher.displayRole();
    print("Name: ${teacher.name}\nAge: ${teacher.age} \nAddress:${teacher.address} ");
    teacher.displayCoursesTaught();
  }
}

void main() {
  StudentManagementSystem system = StudentManagementSystem();
  system.main();
}
