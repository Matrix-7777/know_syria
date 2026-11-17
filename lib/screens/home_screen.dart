import 'package:flutter/material.dart';
import 'voice_assistant_screen.dart'; import 'whiteboard_screen.dart'; import 'curriculum_screen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Know Syria')),
      body: ListView(children: [
        ListTile(leading: const Icon(Icons.mic), title: const Text('Voice Assistant'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const VoiceAssistantScreen()))),
        ListTile(leading: const Icon(Icons.edit), title: const Text('Whiteboard'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const WhiteboardScreen()))),
        ListTile(leading: const Icon(Icons.book), title: const Text('Curriculum'), onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const CurriculumScreen()))),
      ]),
    );
  }
}
