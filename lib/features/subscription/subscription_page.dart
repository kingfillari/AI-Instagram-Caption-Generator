import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/subscription_provider.dart';

class SubscriptionPage extends ConsumerWidget {
  const SubscriptionPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sub = ref.watch(subscriptionProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Go Pro")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            sub.activatePro();
            ScaffoldMessenger.of(context)
                .showSnackBar(
              const SnackBar(
                  content: Text("Pro Activated!")),
            );
          },
          child: const Text("Upgrade to Pro"),
        ),
      ),
    );
  }
}