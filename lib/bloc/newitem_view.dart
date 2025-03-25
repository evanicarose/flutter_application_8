import 'package:flutter/material.dart';

class NewItemView extends StatelessWidget {
  const NewItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[700],
        title: const Text("New Item"),
      ),
      body: Center(
        child: Column(
          children: [
            const Placeholder(fallbackHeight: 400, fallbackWidth: 400),
            const TextField(decoration: InputDecoration(hintText: "Title")),
            const TextField(decoration: InputDecoration(hintText: "Description")),
            const TextField(decoration: InputDecoration(hintText: "₱ 0.00")),
            ElevatedButton(onPressed: () {}, child: const Text("Save")),
          ],
        ),
      ),
    );
  }
}
