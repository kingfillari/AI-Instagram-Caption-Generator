import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/ai_service.dart';

final captionProvider =
    StateNotifierProvider<CaptionNotifier, AsyncValue<String>>(
        (ref) => CaptionNotifier());

class CaptionNotifier
    extends StateNotifier<AsyncValue<String>> {
  CaptionNotifier() : super(const AsyncValue.data(""));

  final AIService _service = AIService();

  Future<void> generate(
      String topic, String tone) async {
    state = const AsyncValue.loading();
    try {
      final result =
          await _service.generateCaption(topic, tone);
      state = AsyncValue.data(result);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}