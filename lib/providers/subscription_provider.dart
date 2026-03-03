import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/subscription_service.dart';

final subscriptionProvider =
    ChangeNotifierProvider((ref) => SubscriptionService());