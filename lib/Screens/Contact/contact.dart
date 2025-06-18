import 'package:Portifolio/Contoller%20Pages/contact_contoller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Portifolio/Screens/AppBar/appbar.dart';
// Make sure AppBarReusable is exported from appbar.dart

class Contact extends StatelessWidget {
  Contact({super.key});
  final ContactController controller = Get.put(ContactController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.of(context).size.width < 600
          ? const AppbarReusable(screenWidth: 600, title: "Contacts")
          : null,
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height > 600 ? 40 : null,
              ),
              Center(
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 800),
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "GET IN TOUCH",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 20),
                      LayoutBuilder(builder: (context, constraints) {
                        if (constraints.maxWidth < 500) {
                          return Column(
                            children: [
                              inputField(
                                  "Your Name", controller.nameController),
                              const SizedBox(height: 10),
                              inputField(
                                  "Email ID", controller.emailController),
                            ],
                          );
                        } else {
                          return Row(
                            children: [
                              Expanded(
                                  child: inputField(
                                      "Your Name", controller.nameController)),
                              const SizedBox(width: 10),
                              Expanded(
                                  child: inputField(
                                      "Email ID", controller.emailController)),
                            ],
                          );
                        }
                      }),
                      const SizedBox(height: 10),
                      inputField("Subject", controller.subjectController),
                      const SizedBox(height: 10),
                      inputField("Your Message", controller.messageController,
                          maxLines: 5),
                      const SizedBox(height: 20),
                      Obx(() => SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.amber,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: controller.isLoading.value
                                  ? null
                                  : controller.sendEmail,
                              child: controller.isLoading.value
                                  ? const CircularProgressIndicator(
                                      color: Colors.white,
                                    )
                                  : const Text(
                                      "Send Message",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                            ),
                          )),
                      const SizedBox(height: 20),
                      const Divider(color: Colors.grey),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget inputField(String hint, TextEditingController controller,
      {int maxLines = 1}) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.all(12),
        hintText: hint,
        hintStyle: const TextStyle(fontSize: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.blue),
        ),
      ),
    );
  }
}
