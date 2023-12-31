import 'package:bookly_app/core/functions/custom_snak_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomURL(context, String? url) async {
  if (url != null) {
    Uri url = Uri.parse(url);

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      customSnakBar(context, 'Can\'t Launch $url');
    }
  }
}
