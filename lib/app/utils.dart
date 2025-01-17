import 'package:url_launcher/url_launcher.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:xml/xml.dart';

class Utils {
  static launch(String url) async {
    if (!await launchUrl(
      Uri.parse(url),
      // mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    } else {
      print("object");
    }
  }
}

Future<List<dynamic>> fetchGitHubRepos() async {
  final response = await http.get(Uri.parse('https://api.github.com/users/pranav9588/repos'));
  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to load repositories');
  }
}

FirebaseAnalytics analytics = FirebaseAnalytics.instance;

void logPortfolioVisit() {
  analytics.logEvent(
    name: 'portfolio_visit',
    parameters: {'timestamp': DateTime.now().toString()},
  );
}

Future<List<Map<String, String>>> fetchBlogs() async {
  final url = 'https://cors-anywhere.herokuapp.com/https://medium.com/feed/@pranav.patel2001';
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final document = XmlDocument.parse(response.body);
    return document.findAllElements('item').map((item) {
      return {
        'title': item.findElements('title').single.text,
        'link': item.findElements('link').single.text,
      };
    }).toList();
  } else {
    print(response.body);
    throw Exception('Failed to fetch blogs');
  }
}
