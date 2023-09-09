import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse("https://www.github.com/crypticwisdom");

class DetailWidget extends StatelessWidget {
  const DetailWidget({super.key});

  Future<void> launchLink() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                margin: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/me.jpeg",
                        width: 100,
                        alignment: Alignment.center,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      const Expanded(
                          child: Text("Wisdom Nwachukwu (Cryptic Wisdom)")),
                    ],
                  ),
                ),
              ),
              TextButton.icon(
                  onPressed: launchLink,
                  icon: Icon(Icons.link),
                  label: Text("Open Github")),
            ],
          ),
        ),
      ),
    );
  }
}
