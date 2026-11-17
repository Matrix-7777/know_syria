import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/curriculum_data.dart';
import '../models/subject.dart';
final gradesProvider = Provider<List<String>>((ref) => CurriculumData.grades);
final subjectsByGradeProvider = Provider.family<List<Subject>, String>((ref, g) => CurriculumData.byGrade(g));
