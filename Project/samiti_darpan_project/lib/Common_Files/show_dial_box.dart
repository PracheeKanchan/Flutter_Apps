import 'package:url_launcher/url_launcher.dart';

class ShowDialBox{

  // Function to launch the dialer with the phone number
  static  void launchDialBox(String phoneNumber) async {

    final Uri launchUri = Uri(scheme: 'tel', path: phoneNumber);

    print('Attempting to launch dialer with URI: $launchUri');  // Add this log
  try {
    await launchUrl(launchUri);
    print('Dialer launched successfully');
  } catch (e) {
    print('Error opening dialer: $e');
  }

  }
}