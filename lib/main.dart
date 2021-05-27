import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'otp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: "Flutter SMS Auto fill",
      home: Auth(),
    );
  }
}

class Auth extends StatelessWidget {
  const Auth({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
            child: Text('Login / Register'),
            onPressed: () async {

              //http here
             final signcode = await SmsAutoFill().getAppSignature;
             print(signcode);

              Navigator.push(context, MaterialPageRoute(builder: (c) => Otp() ));
            },
        ),
      ),
    );
  }
}


