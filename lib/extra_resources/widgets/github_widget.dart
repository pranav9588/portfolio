import 'package:flutter/material.dart';
import 'package:my_portfolio_web/app/utils.dart';

class GithubWidget extends StatelessWidget {
  const GithubWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: FutureBuilder(
        future: fetchGitHubRepos(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            final repos = snapshot.data as List;
            return ListView.builder(
              itemCount: repos.length,
              itemBuilder: (context, index) {
                final repo = repos[index];
                return ListTile(
                  title: Text(repo['name']),
                  subtitle: Text(repo['description'] ?? 'No description'),
                  trailing: Text('⭐ ${repo['stargazers_count']}'),
                );
              },
            );
          }
        },
      ),
    );
    ;
  }
}
