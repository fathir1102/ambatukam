
import 'package:flutter/material.dart';
import 'profile.dart'; 
import 'skill.dart';
import 'project.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portfolio Saya'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              accountName: const Text(
                'Muhammad Fathir Febrianzah',
              ),
              accountEmail: const Text(
                '11 RPL 2 | SMKN 64 Jakarta',
              ),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage(
                  'asset/image/pp.jpg',
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Beranda'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfilePage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.code),
              title: const Text('Skill'),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SkillPage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.folder),
              title: const Text('Project'),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProjectPage(),
                 ),
                );
               },
              ),  
            ]
          )  
        ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 85,
                backgroundImage: AssetImage(
                  'asset/image/pp.jpg',
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                'Muhammad Fathir Febrianzah',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),
              const Text(
                'Siswa SMKN 64 Jakarta',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),

              const Text(
                'Kelas 11 RPL 2',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 25),
              const Text(
                'Selamat datang di portfolio saya.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 25),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                    ),
                  );
                },
                icon: const Icon(Icons.person),
                label: const Text('Lihat Profile'),
              ),
              const SizedBox(height: 25),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SkillPage(),
                    ),
                  );
                },
                icon: const Icon(Icons.code),
                label: const Text('Lihat skill'),
              ),
              const SizedBox(height: 25),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProjectPage(),
                    ),
                  );
                },
                icon: const Icon(Icons.folder),
                label: const Text('Lihat Project'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
