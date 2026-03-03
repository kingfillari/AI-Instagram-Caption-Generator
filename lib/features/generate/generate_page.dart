import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/caption_provider.dart';
import 'caption_card.dart';

class GeneratePage extends ConsumerStatefulWidget {
  const GeneratePage({super.key});

  @override
  ConsumerState<GeneratePage> createState() =>
      _GeneratePageState();
}

class _GeneratePageState
    extends ConsumerState<GeneratePage> {
  final topicController = TextEditingController();
  String tone = "Funny";

  @override
  Widget build(BuildContext context) {
    final captionState = ref.watch(captionProvider);

    return Scaffold(
      appBar:
          AppBar(title: const Text("Generate Caption")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: topicController,
              decoration:
                  const InputDecoration(labelText: "Topic"),
            ),
            const SizedBox(height: 10),
            DropdownButton<String>(
              value: tone,
              items: ["Funny", "Professional", "Emotional"]
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ))
                  .toList(),
              onChanged: (value) =>
                  setState(() => tone = value!),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ref
                    .read(captionProvider.notifier)
                    .generate(
                        topicController.text, tone);
              },
              child: const Text("Generate"),
            ),
            const SizedBox(height: 20),
            captionState.when(
              data: (data) =>
                  data.isEmpty ? Container() : CaptionCard(text: data),
              loading: () =>
                  const CircularProgressIndicator(),
              error: (e, _) => Text("Error: $e"),
            )
          ],
        ),
      ),
    );
  }
}