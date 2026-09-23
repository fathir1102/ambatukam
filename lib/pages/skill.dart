
import 'package:flutter/material.dart';

class SkillPage extends StatelessWidget {
  const SkillPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skill'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          skillCard(
            Icons.language,
            'HTML & CSS',
            'Membuat dan mendesain website.',
          ),
          skillCard(
            Icons.javascript,
            'JavaScript',
            'Membuat website menjadi interaktif.',
          ),
          skillCard(
            Icons.phone_android,
            'Flutter',
            'Membuat aplikasi mobile.',
          ),
          skillCard(
            Icons.storage,
            'MySQL',
            'Mengelola database menggunakan SQL.',
          ),
          skillCard(
            Icons.code,
            'PHP',
            'Membuat website menggunakan PHP.',
          ),
          skillCard(
            Icons.computer,
            'Java',
            'Mempelajari pemrograman Java dan OOP.',
          ),
        ],
      ),
    );
  }

  Widget skillCard
  (IconData icon,
    String nama,
    String deskripsi,) 
    {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        title: Text(
          nama,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(deskripsi),
      ),
    );
  }
}
