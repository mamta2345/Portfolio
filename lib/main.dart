import 'package:Portifolio/Screens/Home/correct_home.dart';
import 'package:Portifolio/splacescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Dummy ThemeController to simulate your GetX theme logic
class ThemeController extends GetxController {
  RxBool isDark = false.obs;

  void toggleTheme() {
    isDark.value = !isDark.value;
  }
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Initialize your GetX theme controller
  final ThemeController themeController = Get.put(ThemeController());

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Portfolio',
        themeMode:
            themeController.isDark.value ? ThemeMode.dark : ThemeMode.light,
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.white,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
          textTheme: const TextTheme(
            bodyLarge: TextStyle(color: Colors.black),
            bodyMedium: TextStyle(color: Colors.black),
          ),
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.black,
          primaryColor: Colors.black,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
          ),
          textTheme: const TextTheme(
            bodyLarge: TextStyle(color: Colors.white),
            bodyMedium: TextStyle(color: Colors.white),
          ),
        ),
        home: Builder(
          builder: (context) {
            final screenWidth = MediaQuery.of(context).size.width;
            print('Screen width: $screenWidth');

            if (screenWidth < 600) {
              return const SplaceScreen(); // Use your SplaceScreen for small devices
            } else {
              return NewHome();
            }
          },
        ),
      );
    });
  }
}
