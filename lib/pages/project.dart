
import 'package:flutter/material.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project'),
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
          projectCard(
            Icons.phone_android,
            'Portfolio Flutter',
            'Aplikasi portfolio menggunakan Flutter.',
          ),
          projectCard(
            Icons.school,
            'Website Sekolah',
            'Website profil sekolah menggunakan HTML dan CSS.',
          ),
          projectCard(
            Icons.storage,
            'Database Siswa',
            'Project database menggunakan MySQL.',
          ),
          projectCard(
            Icons.code,
            'Program Java',
            'Program sederhana menggunakan Java OOP.',
          ),
        ],
      ),
    );
  }

  Widget projectCard
  (
    IconData icon,
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
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 18,
        ),
      ),
    );
  }
}

