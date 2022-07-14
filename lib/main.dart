import 'dart:async';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:whatsapp_share/whatsapp_share.dart';

void main() => runApp(const MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Future<void> share() async {
    await WhatsappShare.share(
      text: 'Feedback : ',
      // linkUrl: '',
      phone: '917007855628',
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Feedback'),
          centerTitle: true,
        ),
        body: Center(
          child: GestureDetector(
              onTap: share,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/whatsAppLogo.png'),
                    radius: 40.0,
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Share Feedback',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
