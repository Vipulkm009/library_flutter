import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPhoneScreen extends StatefulWidget {
  static String id = "LoginPhone";

  @override
  _LoginPhoneScreenState createState() => _LoginPhoneScreenState();
}

class _LoginPhoneScreenState extends State<LoginPhoneScreen> {
  String phoneNo = '';
  final _formKey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _smsController = TextEditingController();
  String _verificationId = '';

  void showSnackbar(String message) {
    _scaffoldKey.currentState!.showSnackBar(SnackBar(content: Text(message)));
  }

  void verifyPhoneNumber() async {
    PhoneVerificationCompleted verificationCompleted =
        (PhoneAuthCredential phoneAuthCredential) async {
      await _auth.signInWithCredential(phoneAuthCredential);
      showSnackbar(
          "Phone number automatically verified and user signed in: ${_auth.currentUser!.uid}");
    };
    PhoneVerificationFailed verificationFailed =
        (FirebaseAuthException authException) {
      showSnackbar(
          'Phone number verification failed. Code: ${authException.code}. Message: ${authException.message}');
    };
    PhoneCodeSent codeSent = (String verificationId, int? forceResendingToken) {
      showSnackbar('Please check your phone for the verification code.');
      _verificationId = verificationId;
    };
    PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout =
        (String verificationId) {
      showSnackbar("verification code: " + verificationId);
      _verificationId = verificationId;
    };
    try {
      await _auth.verifyPhoneNumber(
          phoneNumber: _phoneNumberController.text,
          timeout: const Duration(seconds: 5),
          verificationCompleted: verificationCompleted,
          verificationFailed: verificationFailed,
          codeSent: codeSent,
          codeAutoRetrievalTimeout: codeAutoRetrievalTimeout);
    } catch (e) {
      showSnackbar("Failed to Verify Phone Number: $e");
    }
  }

  void signInWithPhoneNumber() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Form(
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: _phoneNumberController,
                  decoration: const InputDecoration(
                      labelText: 'Phone number (+xx xxx-xxx-xxxx)'),
                  onChanged: (text) {
                    phoneNo = text;
                  },
                  validator: (text) {
                    if (text!.isNotEmpty &&
                        text.startsWith('+') &&
                        text.length >= 12) {
                      return null;
                    }
                    return 'Enter correct Phone number';
                  },
                ),
                // ElevatedButton(
                //   // onPressed: () {
                //   //   if (_formKey.currentState!.validate()) {}
                //   // },
                //   onPressed: () async =>
                //       {_phoneNumberController.text = (await _autoFill.hint)!},
                //   child: Text('Get Number'),
                // ),
                ElevatedButton(
                  child: Text("Verify Number"),
                  onPressed: () async {
                    verifyPhoneNumber();
                  },
                ),
                TextFormField(
                  controller: _smsController,
                  decoration:
                      const InputDecoration(labelText: 'Verification code'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    signInWithPhoneNumber();
                  },
                  child: Text("Sign in"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
