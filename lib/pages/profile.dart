import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 600,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  const CircleAvatar(
                    radius: 110,
                    backgroundImage: AssetImage(
                      'asset/image/pp.jpg',
                    ),
                  ),

                  const SizedBox(height: 25),
                  const Text(
                    'Muhammad Fathir Febrianzah',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),
                  const Text(
                    '11 RPL 2',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 30),
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Biodata',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 25),
                          Text(
                            'Nama:',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Muhammad Fathir Febrianzah',
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),

                          SizedBox(height: 18),
                          Text(
                            'Kelas:',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '11 RPL 2',
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),

                          SizedBox(height: 18),
                          Text(
                            'Jurusan:',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Rekayasa Perangkat Lunak',
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),

                          SizedBox(height: 18),
                          Text(
                            'Sekolah:',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'SMKN 64 Jakarta',
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),

                          SizedBox(height: 18),
                          Text(
                            'Tentang Saya:',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),

                          SizedBox(height: 5),
                          Text(
                            'Saya adalah siswa RPL yang tertarik '
                            'dengan pemrograman, pembuatan aplikasi, '
                            'website, dan teknologi.',
                            style: TextStyle(
                              fontSize: 17,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
