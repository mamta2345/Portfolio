import 'package:Portifolio/Contoller%20Pages/resum_contoller.dart';
import 'package:Portifolio/Screens/Resume/section.dart';
import 'package:Portifolio/Screens/Resume/timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Portifolio/Screens/AppBar/appbar.dart';

class ResumePage extends StatelessWidget {
  ResumePage({super.key});
  final ResumeController controller = Get.put(ResumeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarReusable(screenWidth: 600, title: "Resume"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionTitle(title: "Education"),
            Obx(() => Column(
                  children: controller.education
                      .map((item) => TimelineTileWidget(data: item))
                      .toList(),
                )),
            const SizedBox(height: 24),
            const SectionTitle(title: "Experience"),
            Obx(() => Column(
                  children: controller.experience
                      .map((item) => TimelineTileWidget(data: item))
                      .toList(),
                )),
          ],
        ),
      ),
    );
  }
}
