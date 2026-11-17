import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/curriculum_provider.dart';
class CurriculumScreen extends ConsumerWidget {
  const CurriculumScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final grades = ref.watch(gradesProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Curriculum')),
      body: ListView.builder(itemCount: grades.length, itemBuilder: (c, i) => ExpansionTile(title: Text(grades[i]), children: ref.watch(subjectsByGradeProvider(grades[i])).map((s) => ListTile(title: Text(s.name))).toList())),
    );
  }
}
