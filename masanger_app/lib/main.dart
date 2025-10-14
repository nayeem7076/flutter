import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MessengerChatList(),
    );
  }
}

class MessengerChatList extends StatelessWidget {
  const MessengerChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F2F5),
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: const Text(
          "Messenger",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.camera_alt_outlined, color: Colors.white),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.edit, color: Colors.white),
          ),
        ],
      ),

      
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          chatTile("😎", "Rifat Khan", "Kira Mamu?", "10:50 PM", Colors.blue),
          chatTile("🫶", "Sakil Vai", "Kamon asen vai?", "2:45 AM", Colors.red),
          chatTile("👴", "Sofikul Mama", "Mama koi asen?", "9:12 AM", Colors.green),
          chatTile("🗣️", "Shohag Vai", "Kobe asba?", "12:30 PM", Colors.orange),
          chatTile("🐼", "Anik Bro", "Aita dekso?", "Yesterday", Colors.purple),
          chatTile("🔥", "Rasel Vai", "Bro ready?", "Sat", Colors.teal),
        ],
      ),
    );
  }

  // reusable function for each chat
  Widget chatTile(String emoji, String name, String message, String time, Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color.withOpacity(0.2),
          radius: 26,
          child: Text(
            emoji,
            style: const TextStyle(fontSize: 22),
          ),
        ),
        title: Text(
          name,
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          message,
          style: const TextStyle(color: Colors.black54),
        ),
        trailing: Text(
          time,
          style: const TextStyle(color: Colors.grey, fontSize: 12),
        ),
      ),
    );
  }
}
