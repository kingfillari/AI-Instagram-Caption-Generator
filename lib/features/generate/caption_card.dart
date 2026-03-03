import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CaptionCard extends StatelessWidget {
  final String text;

  const CaptionCard({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(text),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Clipboard.setData(
                    ClipboardData(text: text));
                ScaffoldMessenger.of(context)
                    .showSnackBar(
                  const SnackBar(content: Text("Copied!")),
                );
              },
              child: const Text("Copy"),
            )
          ],
        ),
      ),
    );
  }
}