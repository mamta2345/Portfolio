import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.menu_book_rounded, color: Colors.amber),
        const SizedBox(width: 8),
        Text(title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ],
    );
  }
}

class BulletPoint extends StatelessWidget {
  final String text;
  const BulletPoint({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("•", style: TextStyle(fontSize: 16, height: 1.4)),
        Expanded(
            child:
                Text(text, style: const TextStyle(fontSize: 14, height: 1.4))),
      ],
    );
  }
}
