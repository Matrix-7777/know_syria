import 'package:flutter/material.dart';
import '../services/speech_service.dart'; import '../services/tts_service.dart'; import '../services/ai_service.dart';
class VoiceAssistantScreen extends StatefulWidget { const VoiceAssistantScreen({super.key}); @override State<VoiceAssistantScreen> createState() => _VoiceAssistantScreenState(); }
class _VoiceAssistantScreenState extends State<VoiceAssistantScreen> {
  final _speech = SpeechService(); final _tts = TTSService(); final _ai = AIService(); final _ctrl = TextEditingController();
  String _ans = 'Ask me anything...';
  void _send(String q) async { if(q.isEmpty) return; final a = await _ai.ask(q); setState((){_ans=a;}); _tts.speak(a); }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Assistant')),
      body: Column(children: [
        Expanded(child: Center(child: Text(_ans))),
        Row(children: [
          Expanded(child: TextField(controller: _ctrl)),
          IconButton(icon: const Icon(Icons.mic), onPressed: () => _speech.startListening((t) => _ctrl.text = t)),
          IconButton(icon: const Icon(Icons.send), onPressed: () => _send(_ctrl.text)),
        ]),
      ]),
    );
  }
}
