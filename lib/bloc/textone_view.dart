import 'package:flutter/material.dart';

class TextoneView extends StatelessWidget {
  const TextoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[700],
        title: const Text("Text #1"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://images.pexels.com/photos/1097930/pexels-photo-1097930.jpeg',
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Text", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Text #1", style: TextStyle(fontSize: 30)),
          ),
        ],
      ),
    );
  }
}