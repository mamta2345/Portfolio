import 'package:get/get.dart';

class ResumeController extends GetxController {
  final education = <TimelineData>[
    TimelineData(
      title: "Government PG College, Dharamshala",
      subtitle: "2021 – 2024",
      description:
          "Bachelor of Technology (B.Tech) in Computer Science and Engineering\n> 7 CGPA",
    ),
    TimelineData(
      title: "Government Polytechnic College, Kangra",
      subtitle: "2019 – 2021",
      description: "Diploma in Computer Science and Engineering\n69%",
    ),
  ].obs;

  final experience = <TimelineData>[
    TimelineData(
      title: "Flutter Developer",
      subtitle: "Aug 2024 – Present",
      description: "C-DAC, Mohali",
      bulletPoints: [
        "Developed and maintained mobile apps using Flutter.",
        "Collaborated with cross-functional teams.",
        "Worked on performance improvements.",
        "Participated in code reviews.",
      ],
    ),
    TimelineData(
      title: "Android Developer (Training)",
      subtitle: "Jan 2024 – Jun 2024",
      description: "Novem Control, Mohali",
      bulletPoints: [
        "Created Android budget tracker app.",
        "Provided real-time insights for better financial decisions.",
      ],
    ),
  ].obs;
}

class TimelineData {
  final String title;
  final String subtitle;
  final String? description;
  final List<String>? bulletPoints;

  TimelineData({
    required this.title,
    required this.subtitle,
    this.description,
    this.bulletPoints,
  });
}
