import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';


class Otp extends StatefulWidget {
  const Otp({Key key}) : super(key: key);

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //_listenOtp method on here
    _listenOtp();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text('Chamith OTP'),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0,vertical: 10.0),
                child: PinFieldAutoFill(
                  codeLength: 4,
                  onCodeChanged: (val){
                    print(val);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  void _listenOtp() async {
      await SmsAutoFill().listenForCode;
  }

}

