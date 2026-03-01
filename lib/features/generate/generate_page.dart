import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/caption_provider.dart';
import 'caption_card.dart';

class GeneratePage extends ConsumerStatefulWidget {
  const GeneratePage({super.key});

  @override
  ConsumerState<GeneratePage> createState() => _GeneratePageState();
}

class _GeneratePageState extends ConsumerState<GeneratePage> {
  final topic = TextEditingController();
  String tone = "Funny";

  @override
  Widget build(BuildContext context) {
    final caption = ref.watch(captionProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("AI Caption Generator")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: topic, decoration: const InputDecoration(labelText: "Topic")),
            DropdownButton<String>(
              value: tone,
              items: ["Funny", "Professional", "Inspirational"]
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (v) => setState(() => tone = v!),
            ),
            ElevatedButton(
              onPressed: () async {
                await ref.read(captionProvider.notifier)
                    .generate(topic.text, tone);
              },
              child: const Text("Generate"),
            ),
            const SizedBox(height: 20),
            Expanded(child: CaptionCard(text: caption)),
          ],
        ),
      ),
    );
  }
}