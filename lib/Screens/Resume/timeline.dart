import 'package:Portifolio/Contoller%20Pages/resum_contoller.dart';
import 'package:Portifolio/Screens/Resume/section.dart';
import 'package:flutter/material.dart';

class TimelineTileWidget extends StatelessWidget {
  final TimelineData data;

  const TimelineTileWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 4),
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.shade400,
                ),
              ),
              Container(
                width: 2,
                height: data.bulletPoints != null
                    ? data.bulletPoints!.length * 20.0
                    : 40,
                color: Colors.grey.shade300,
              ),
            ],
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(data.title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 4),
                Text(data.subtitle,
                    style: const TextStyle(color: Colors.orange, fontSize: 14)),
                if (data.description != null) ...[
                  const SizedBox(height: 4),
                  Text(data.description!,
                      style: const TextStyle(color: Colors.grey, fontSize: 14)),
                ],
                if (data.bulletPoints != null) ...[
                  const SizedBox(height: 8),
                  ...data.bulletPoints!
                      .map((point) => BulletPoint(text: point)),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
