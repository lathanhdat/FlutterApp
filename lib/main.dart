import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:sprintf/sprintf.dart';

void main() {
  runApp(MiApp());
}

class MiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        body: renderArea,
      ),
    );
  }
}

final renderArea = SafeArea(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      avatarContainer,
      nameText,
      SizedBox(
        height: 20.0,
        width: 150.0,
      ),
      positionText,
      SizedBox(
        height: 20.0,
        width: 400.0,
        child: Divider(
          color: Color.fromRGBO(100, 255, 218, 0.8),
          height: 10,
          thickness: 1,
        ),
      ),
      phoneCard,
      emailCard,
    ],
  ),
);

final avatarContainer = CircleAvatar(
  backgroundImage: AssetImage('images/avatar.jpg'),
  radius: 50,
);

final nameText = Text(
  'LA THÀNH ĐẠT',
  style: TextStyle(
    fontFamily: 'DancingScript',
    color: Colors.white,
    fontSize: 35,
    letterSpacing: 2.5,
    fontWeight: FontWeight.bold,
  ),
);

final positionText = Text(
  'System Engineer',
  style: TextStyle(
    fontFamily: 'PressStart2P',
    color: Colors.white,
    fontSize: 20,
    letterSpacing: 2.5,
  ),
);

final tel = '+84 901398584';
final phoneCard = Card(
  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
  child: ListTile(
    leading: Icon(Icons.contact_phone, color: Colors.deepPurple),
    title: Text(
      tel,
      style: TextStyle(
        fontSize: 20,
        color: Colors.black87,
      ),
    ),
    onTap: () {
      launch(sprintf('tel: %s', [tel]));
    },
  ),
);

final email = 'ltdat1095@gmail.com';
final emailCard = Card(
  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
  child: ListTile(
    leading: Icon(Icons.contact_mail, color: Colors.deepPurple),
    title: Text(
      email,
      style: TextStyle(
        fontSize: 20,
        color: Colors.black87,
      ),
    ),
    onTap: () {
      launch(sprintf('mailto:%s?', [email]));
    },
  ),
);
