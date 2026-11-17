import '../models/subject.dart';
class CurriculumData {
  static List<Subject> allSubjects = [
    Subject(name: 'Arabic', gradeLevel: 'Grade 7', description: 'Grammar and reading'),
    Subject(name: 'Math', gradeLevel: 'Grade 7', description: 'Algebra and geometry'),
    Subject(name: 'Physics', gradeLevel: 'Baccalaureate', description: 'Mechanics'),
  ];
  static List<String> get grades => allSubjects.map((s) => s.gradeLevel).toSet().toList();
  static List<Subject> byGrade(String g) => allSubjects.where((s) => s.gradeLevel == g).toList();
}
