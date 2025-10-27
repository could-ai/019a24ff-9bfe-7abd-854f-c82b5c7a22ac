import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 40, bottom: 20),
              decoration: BoxDecoration(
                color: Colors.teal.shade300,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: const Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(height: 12),
                    Text(
                      'اسمي',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '@username',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildStatColumn('المشاركات', '120'),
                  _buildStatColumn('المتابعون', '5.2K'),
                  _buildStatColumn('يتابع', '340'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'أعمالي',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 10),
            GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 9,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    'https://picsum.photos/seed/${index + 10}/200/200',
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Column _buildStatColumn(String label, String count) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          count,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    );
  }
}
