import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CaptionCard extends StatelessWidget {
  final String text;

  const CaptionCard({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(text),
        trailing: IconButton(
          icon: const Icon(Icons.copy),
          onPressed: () {
            Clipboard.setData(ClipboardData(text: text));
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("Copied")));
          },
        ),
      ),
    );
  }
}