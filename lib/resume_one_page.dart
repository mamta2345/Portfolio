import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: ResumeScreen(),
  ));
}

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: const [
          Expanded(flex: 2, child: SideSection()),
          Expanded(flex: 3, child: MainSection()),
        ],
      ),
    );
  }
}

class SideSection extends StatelessWidget {
  const SideSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      height: double.infinity, // Ensures it fills the available height
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/profile.jpg"),
            ),
            const SizedBox(height: 10),
            const Text("New York, NY"),
            const Text("(123) 456-7890"),
            const Text("example@email.com"),
            const Text("linkedin.com/in/vikasgupta"),
            const Text("github.com/vikasgupta"),
            const Divider(),
            const Text("PROFESSIONAL SUMMARY",
                style: TextStyle(fontWeight: FontWeight.bold)),
            const Text(
              "Motivated computer science graduate with hands-on experience...",
              textAlign: TextAlign.center,
            ),
            const Divider(),
            const Text("SKILLS", style: TextStyle(fontWeight: FontWeight.bold)),
            const Text(
                "Java, Python, JavaScript, C++, HTML/CSS, React.js, Node.js"),
            const Divider(),
            const Text("LANGUAGES",
                style: TextStyle(fontWeight: FontWeight.bold)),
            const Text("English, German, French"),
          ],
        ),
      ),
    );
  }
}

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  Widget sectionTitle(String title) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      );

  Widget bullet(String text) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("• ", style: TextStyle(fontSize: 16)),
          Expanded(child: Text(text)),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sectionTitle("Vikas Gupta"),
          const Text("Entry-Level Software Engineer"),
          sectionTitle("EXPERIENCE"),
          const Text(
              "Tata Consultancy Services (TCS) — Software Developer Intern"),
          const Text("May – July 2018, Mumbai, India"),
          bullet("Built a Java-based bug-tracking tool with MySQL..."),
          bullet("Improved SQL query speed by 20%..."),
          bullet("Collaborated in Agile sprints..."),
          sectionTitle("PROJECTS"),
          const Text("Library Management System (Java, MySQL)"),
          const Text("May – July 2018"),
          bullet("Created a desktop app for tracking books/members..."),
          bullet("Reduced manual work by enabling quick updates..."),
          const SizedBox(height: 10),
          const Text("Real-Time Chat App (Node.js, Socket.io)"),
          const Text("May – July 2018"),
          bullet("Developed a live messaging app using WebSocket..."),
          const SizedBox(height: 10),
          const Text("Portfolio Website (HTML, CSS, JavaScript)"),
          const Text("May – July 2018"),
          bullet(
              "Designed a responsive website to showcase coding projects..."),
          sectionTitle("CERTIFICATIONS & ACHIEVEMENTS"),
          bullet("Java (HackerRank), Responsive Web Design (freeCodeCamp)"),
          bullet(
              "Top 5% – Coding Ninjas Campus Challenge | Winner – Inter-IIT Hackathon"),
          bullet("Solved 100+ coding problems on LeetCode"),
          sectionTitle("EDUCATION"),
          const Text("Bachelor of Technology (Computer Science), IIT Bombay"),
          const Text("Sep 2011 – Aug 2015"),
          sectionTitle("REFERENCE"),
          const Text("Rajeev Ranjan – Head of Operations, Jyoti Pvt. Ltd"),
          const Text("790435676 | rajeeevr@gmail.com"),
        ],
      ),
    );
  }
}
