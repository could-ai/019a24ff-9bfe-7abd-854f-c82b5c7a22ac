import 'package:flutter/material.dart';

class UploadScreen extends StatelessWidget {
  const UploadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.cloud_upload_outlined,
                size: 120,
                color: Colors.teal.shade300,
              ),
              const SizedBox(height: 30),
              const Text(
                'شارك إبداعك مع العالم',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                'اختر نوع الموهبة التي تريد مشاركتها',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 40),
              Wrap(
                spacing: 16.0,
                runSpacing: 16.0,
                alignment: WrapAlignment.center,
                children: [
                  _buildCategoryChip(context, Icons.draw, 'رسم'),
                  _buildCategoryChip(context, Icons.music_note, 'موسيقى'),
                  _buildCategoryChip(context, Icons.create, 'كتابة'),
                  _buildCategoryChip(context, Icons.camera_alt, 'تصوير'),
                  _buildCategoryChip(context, Icons.directions_run, 'رقص'),
                ],
              ),
              const SizedBox(height: 50),
              ElevatedButton.icon(
                icon: const Icon(Icons.add_a_photo_outlined),
                label: const Text('اختر ملفاً'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber.shade700,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  // TODO: Implement file picking logic
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryChip(BuildContext context, IconData icon, String label) {
    return Chip(
      avatar: Icon(icon, color: Colors.teal),
      label: Text(
        label,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    );
  }
}
