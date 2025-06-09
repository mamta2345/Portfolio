import 'package:Portifolio/Contoller%20Pages/about_contoller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Portifolio/Screens/Link_url_lancher/url.dart';

class Aboutpage extends StatelessWidget {
  final AboutController controller = Get.put(AboutController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 30),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                colors: [Colors.white, Colors.grey.shade100],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Text(
                      "About Me",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.circle, size: 5, color: Colors.orange),
                  ],
                ),
                const SizedBox(height: 8),
                Container(width: 40, height: 4, color: Colors.orange),
                const SizedBox(height: 16),
                Obx(() => Text(
                      "${controller.greeting.value}!",
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    )),
                const SizedBox(height: 16),
                text(
                    "Hello! My name is Mamta Kumari. I am a Flutter Developer. "
                    "I like to make mobile apps that are easy to use and look good."),
                const SizedBox(height: 12),
                text(
                    "I have built apps using Flutter and Dart. I can connect apps "
                    "to the internet using APIs and make the design work on all screen sizes."),
                const SizedBox(height: 12),
                text(
                    "I enjoy learning new things and want to become better at app development."),
                const SizedBox(height: 12),
                text(
                    "I am looking for a job where I can grow and work with a good team."),
                const SizedBox(height: 12),
                text(
                    "I am excited to share my work with you and hope you like it!"),
                const SizedBox(height: 11),
                ContactIcon(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget text(String data) {
    return Text(
      data,
      style: TextStyle(
        fontSize: 16,
        height: 1.6,
        color: Colors.grey[800],
      ),
    );
  }
}
