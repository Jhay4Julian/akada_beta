import 'package:akada_beta/screens/onboarding/login.dart';
import 'package:flutter/material.dart';

class ExitApp extends StatelessWidget {
  const ExitApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<bool> showExitPopup() async {
      return await showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          title: const Text('Exit App?'),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(false), 
              child: const Text('No')),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(true), 
              child: const Text('Yes'))
          ],
        )
      )??false;
    }
    return WillPopScope(
      onWillPop: showExitPopup,
      child: const LoginScreen()
    );
  }
}