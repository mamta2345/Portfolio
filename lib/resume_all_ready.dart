import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

void main() {
  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: ResumePage(),
  ));
}

class ResumePage extends StatelessWidget {
  const ResumePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Mamta Kumari',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: Wrap(
                  spacing: 8,
                  children: [
                    Icon(Icons.phone, size: 16),
                    Text('+91 7807713653'),
                    Icon(Icons.email, size: 16),
                    Text('mamta26121998@gmail.com'),
                    Icon(Icons.location_on, size: 16),
                    Text('Mohali, Punjab'),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Wrap(
                alignment: WrapAlignment.spaceAround,
                spacing: 16,
                runSpacing: 8,
                children: const [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.linkedin, size: 16),
                      SizedBox(width: 4),
                      Text(
                        'linkedin.com/in/mamta-kumari-178843239/',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FaIcon(FontAwesomeIcons.github, size: 16),
                      SizedBox(width: 4),
                      Text(
                        'github.com/mamta2345',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              _buildSectionTitle('Career Objective'),
              _buildParagraph(
                  "To work with an organization where I can learn new skills and increase my abilities for the organizational goals as well as myself."),
              _buildSectionTitle('Education'),
              _buildEduItem(
                  'Govt. PG College, Dharamshala (70%)',
                  'Bachelor of Technology in Computer Science Engineering',
                  'Aug 2021 - July 2024'),
              _buildEduItem(
                  'Govt. Polytechnic, Kangra (69%)',
                  'Computer Science Engineering (Diploma)',
                  'Aug 2019 - July 2021'),
              _buildSectionTitle('Experience'),
              _buildExperienceItem(
                'CDAC Mohali',
                'Flutter Developer (Intern)',
                'Aug 2024 – Present',
                [
                  'Working on Flutter-based mobile applications, focusing on Android/iOS.Developing and integrating APIs, push notifications, and animations.',
                  'Built features like user login, course listing, and progress tracking.',
                  'Implemented features like authentication, course management, and progress tracking.',
                ],
              ),
              _buildExperienceItem(
                'Novem Control',
                'Android Developer (Trainee)',
                'Jan 2024 – June 2024',
                [
                  'Personal budget tracker Android app for tracking income, expenses, and goal setting.',
                  'Provides real-time financial insights and updates.',
                ],
              ),
              _buildSectionTitle('Technical Skills'),
              _buildParagraph(
                  'Languages: Dart, XML, Java (Basic), HTML\nFrameworks/Libraries: Flutter, Firebase, GetX\nTools: VS Code, GitHub, Android Studio, Postman, Swagger\nPlatform: Android, Web\nArea of Expertise: Mobile App Development, API Integration, Real-time UI/UX, Firebase'),
              _buildSectionTitle('Projects'),
              _buildProjectItem(
                'Work-Base Learning Program',
                'Flutter, Dart, Apis | Live Project',
                'Aug 2024 - Present',
                [
                  'Built a responsive web/mobile app using Flutter and Dart.',
                  'Integrated APIs for user access and reporting.',
                ],
              ),
              _buildProjectItem(
                'Personal Budget Tracker',
                'XML, Java, MYSQL | Source Code',
                'Jan 2024 - June 2024',
                [
                  'Android app for income/expense tracking and goal setting.',
                  'Built using Java/XML with MYSQL.',
                  'User-friendly financial dashboards.',
                ],
              ),
              _buildSectionTitle('Strength'),
              _buildBulletList([
                'Team Work',
                'Time Management',
                'Creativity',
                'Good Communication'
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildParagraph(String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        content,
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  Widget _buildEduItem(String institute, String course, String date) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(institute, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(date)
            ],
          ),
          Text(course, style: TextStyle(fontStyle: FontStyle.italic)),
        ],
      ),
    );
  }

  Widget _buildExperienceItem(
      String company, String role, String date, List<String> bullets) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(company, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(date)
            ],
          ),
          Text(role, style: TextStyle(fontStyle: FontStyle.italic)),
          ...bullets.map((e) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: Text('\u2022 $e'),
              )),
        ],
      ),
    );
  }

  Widget _buildProjectItem(
      String title, String techStack, String date, List<String> bullets) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(date),
            ],
          ),
          Text(techStack, style: TextStyle(fontStyle: FontStyle.italic)),
          ...bullets.map((e) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: Text('\u2022 $e'),
              )),
        ],
      ),
    );
  }

  Widget _buildBulletList(List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items
          .map((item) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: Text('\u2022 $item'),
              ))
          .toList(),
    );
  }
}
