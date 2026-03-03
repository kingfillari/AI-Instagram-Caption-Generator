import 'package:firebase_auth/firebase_auth.dart';
import '../core/constants/app_constants.dart';
import 'api_service.dart';

class AIService {
  final ApiService _api = ApiService();

  Future<String> generateCaption(
      String topic, String tone) async {
    final user = FirebaseAuth.instance.currentUser;
    final token = await user?.getIdToken();

    final response = await _api.post(
      "${AppConstants.baseUrl}/api/captions",
      {
        "topic": topic,
        "tone": tone,
      },
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer $token"
      },
    );

    return response['captions'];
  }
}