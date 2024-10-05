import 'package:url_launcher/url_launcher.dart';

Future<bool> LaunchUrlMethod(String link) async {
  return launchUrl(
      Uri.parse(link),
      mode: LaunchMode.externalApplication
  );
}