import 'package:flutter/material.dart';
import 'package:flutter_application_8/src/views/public/newitem.dart';
import 'package:flutter_application_8/src/views/public/textone.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[700],
        automaticallyImplyLeading: false,
        title: const Text("Dashboard"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Textone()),
                  );
                },
                child: Container(
                  height: 300,
                  width: 300,
                  color: Colors.deepPurple[200],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        'https://images.pexels.com/photos/1097930/pexels-photo-1097930.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        height: 150,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      const Text("Text", 
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                      const Text(
                        "Text#1",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Textone()),
                  );
                },
                child: Container(
                  height: 300,
                  width: 300,
                  color: Colors.deepPurple[200],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        'https://images.pexels.com/photos/1097930/pexels-photo-1097930.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        height: 150,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      const Text("Text",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                      const Text(
                        "Text#2",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Newitem()),
                  );
                },
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.deepPurple[800],
                      child: const Icon(Icons.add, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}