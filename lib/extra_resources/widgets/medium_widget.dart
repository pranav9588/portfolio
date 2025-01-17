import 'package:flutter/material.dart';
import 'package:my_portfolio_web/app/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class MediumWidget extends StatelessWidget {
  const MediumWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchBlogs(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          final blogs = snapshot.data as List<Map<String, String>>;
          return ListView.builder(
            itemCount: blogs.length,
            itemBuilder: (context, index) {
              final blog = blogs[index];
              return ListTile(
                title: Text(blog['title'] ?? ""),
                onTap: () => launchUrl(Uri.parse(blog['link']!)),
              );
            },
          );
        }
      },
    );
  }
}
