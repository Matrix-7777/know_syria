import 'package:speech_to_text/speech_to_text.dart' as stt;
class SpeechService {
  final stt.SpeechToText _speech = stt.SpeechToText();
  Future<void> startListening(Function(String) onResult) async {
    await _speech.initialize();
    await _speech.listen(onResult: (r) => onResult(r.recognizedWords));
  }
}
