import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/ai_service.dart';

final captionProvider =
    StateNotifierProvider<CaptionNotifier, String>((ref) {
  return CaptionNotifier();
});

class CaptionNotifier extends StateNotifier<String> {
  CaptionNotifier() : super("");

  Future<void> generate(String topic, String tone) async {
    state = await AIService.generate(topic, tone);
  }
}