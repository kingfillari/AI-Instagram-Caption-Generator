import 'dart:convert';
import 'package:http/http.dart' as http;
import '../core/utils/env.dart';
import '../models/caption_model.dart';

class AIService {
  static const String endpoint = "https://api.openai.com/v1/chat/completions";

  static Future<List<CaptionModel>> generateCaptions({
    required String topic,
    required String tone,
  }) async {
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${Env.openAiApiKey}',
    };

    final body = jsonEncode({
      "model": "gpt-3.5-turbo",
      "messages": [
        {
          "role": "user",
          "content": "Generate 3 Instagram captions about $topic in a $tone tone. Include emojis and 10 relevant hashtags."
        }
      ],
      "temperature": 0.7,
      "max_tokens": 200
    });

    final response = await http.post(Uri.parse(endpoint), headers: headers, body: body);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final captionsText = data['choices'][0]['message']['content'] as String;
      final captions = captionsText.split('\n').where((c) => c.trim().isNotEmpty).toList();
      return captions.map((text) => CaptionModel(text: text)).toList();
    } else {
      throw Exception('Failed to generate captions');
    }
  }
}