import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class _VerifyEmailView extends StatefulWidget {
  const _VerifyEmailView();

  @override
  State<_VerifyEmailView> createState() => __VerifyEmailViewState();
}

class __VerifyEmailViewState extends State<_VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify email'),
      ),
      body: Column(
        children: [
          const Text('Please verify your email address:'),
          TextButton(
            onPressed: () async {
              final user = FirebaseAuth.instance.currentUser;
              await user?.sendEmailVerification();
            },
            child: const Text('Send Email verification'),
          )
        ],
      ),
    );
  }
}
