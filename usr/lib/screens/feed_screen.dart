import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          elevation: 4.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0),
                ),
                child: Image.network(
                  'https://picsum.photos/seed/${index + 1}/600/400',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'إبداع فني ${index + 1}',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 16,
                          backgroundImage: NetworkImage('https://i.pravatar.cc/150?u=a042581f4e29026704d'),
                        ),
                        const SizedBox(width: 8.0),
                        Text(
                          'الفنان المبدع',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.favorite_border),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.comment_outlined),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.share_outlined),
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
