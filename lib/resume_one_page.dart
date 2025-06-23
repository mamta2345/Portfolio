// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomSearchExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CustomSearchExample extends StatefulWidget {
  @override
  _CustomSearchExampleState createState() => _CustomSearchExampleState();
}

class _CustomSearchExampleState extends State<CustomSearchExample> {
  // ignore: prefer_final_fields
  TextEditingController _controller = TextEditingController();
  List<String> allSuggestions = [
    'Web Development',
    'Web Design',
    'Website Hosting',
    'Weather App',
    'Web3',
    'WeTransfer',
    'WordPress',
  ];

  List<String> filteredSuggestions = [];

  void _filterSearch(String input) {
    setState(() {
      filteredSuggestions = allSuggestions
          .where((item) =>
              item.toLowerCase().startsWith(input.toLowerCase()) &&
              input.isNotEmpty)
          .toList();
    });
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      _filterSearch(_controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search Suggestion (No Package)")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Search',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: filteredSuggestions.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(filteredSuggestions[index]),
                    onTap: () {
                      _controller.text = filteredSuggestions[index];
                      filteredSuggestions.clear();
                      setState(() {}); // hide suggestion list after selection
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
