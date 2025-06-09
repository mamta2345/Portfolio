import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ContactController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final subjectController = TextEditingController();
  final messageController = TextEditingController();

  final isLoading = false.obs;

  Future<void> sendEmail() async {
    const serviceId = 'service_w5fj7us';
    const templateId = 'template_9t6e76a';
    const userId = 'F2y_ofMWVJFtNzO2h';
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');

    isLoading.value = true;

    try {
      final response = await http.post(
        url,
        headers: {
          'origin': 'http://localhost',
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {
            'user_name': nameController.text,
            'user_email': emailController.text,
            "to_email": "your_email@example.com",
            'user_subject': subjectController.text,
            'user_message': messageController.text,
          }
        }),
      );

      isLoading.value = false;

      if (response.statusCode == 200) {
        Get.snackbar("Success", "Message Sent Successfully!",
            backgroundColor: Colors.green, colorText: Colors.white);
        clearForm();
      } else {
        Get.snackbar("Error", "Failed to send message",
            backgroundColor: Colors.red, colorText: Colors.white);
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar("Error", "Something went wrong",
          backgroundColor: Colors.red, colorText: Colors.white);
    }
  }

  void clearForm() {
    nameController.clear();
    emailController.clear();
    subjectController.clear();
    messageController.clear();
  }

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    subjectController.dispose();
    messageController.dispose();
    super.onClose();
  }
}
