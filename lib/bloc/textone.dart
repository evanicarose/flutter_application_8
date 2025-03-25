import 'package:flutter/material.dart';

class Textone extends StatelessWidget {
  const Textone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[700],
        title: const Text("Text #1"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
          
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5, // Half of the screen height
            width: double.infinity, // Full width
            child: Image.network(
              'https://images.pexels.com/photos/1097930/pexels-photo-1097930.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              fit: BoxFit.cover, // Ensures the image covers the area properly
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Text",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Text #1",
              style: TextStyle(
                fontSize: 30,
              ),
              ),
          ),
        ],
      ),
    );
  }
}