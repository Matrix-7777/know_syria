import 'package:google_generative_ai/google_generative_ai.dart';
class AIService {
  Future<String> ask(String q) async {
    return 'AI answer for: $q (API key required)';
  }
}
