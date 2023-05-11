import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {

  runApp(MyApp()
  );
}

class MyApp extends StatelessWidget {

  final String _phoneNumber = '+94 76 672 0606';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner : false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('images/my.jpg'),
              ),
              Text(
                'Dinethri Gunawardhana',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'FRONT-END DEVELOPER',
                style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                    color: Colors.teal.shade100,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
              ),),
              MaterialButton(
                onPressed: () async {
                  final _call = 'tel:$_phoneNumber';
                  final _text = 'sms:$_phoneNumber';
                  if (await canLaunch(_call)){
                    await launch(_call);
                  }
                },
                child: Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.phone,
                      color: Colors.teal,
                    ),
                      title: Text(
                      'Contact Me',
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20.0
                      ),),
                  )
                ),
              ),
              SizedBox(
                height: 10.0,
              ),

              MaterialButton(
                onPressed: () async {
                  final _text = 'sms:$_phoneNumber';
                  if (await canLaunch(_text)) {
                    await launch(_text);
                  }
                },
                child: Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(Icons.email,
                        color: Colors.teal,
                      ),
                      title: Text('Text Me',
                        style: TextStyle(
                            color: Colors.teal.shade900,
                            fontFamily: 'Source Sans Pro',
                            fontSize: 20.0
                        ),),
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

