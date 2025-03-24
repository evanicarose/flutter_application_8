import 'package:flutter/material.dart';

class Newitem extends StatelessWidget {
  const Newitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[700],
        title: const Text("New Item"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Prevents unnecessary stretching
            mainAxisAlignment: MainAxisAlignment.start, // Align content to the top
            crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
            children: [
              Container(
                height: 400,
                width: 400,
                color: Colors.grey[300], // Placeholder effect
                child: const Center(
                  child: Text("Image Placeholder", style: TextStyle(color: Colors.black54)),
                ),
              ),
              const SizedBox(height: 20), // Spacing between elements

              // File selection row
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "File Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10), // Spacing between input and button
                    OutlinedButton(
                      onPressed: () {
                        // Add functionality for file selection
                      },
                      child: const Text("Browse"),
                    ),
                  ],
                ),
              ),

              // Title field
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Title",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),

              // Description field
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Description",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),

              // Price input with Peso Sign
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number, // Ensures numeric input
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              "₱",
                              style: TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ),
                          hintText: "0.00",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Save button
              const SizedBox(height: 20), // Spacing before the button
              GestureDetector(
                onTap: () {
                  // Handle save action here
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          "Save",
                          style: TextStyle(
                            color: Colors.white, 
                            fontSize: 18, 
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}