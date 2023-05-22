import 'package:flutter/material.dart';

class myScreen extends StatelessWidget {
  const myScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 70, 0, 0),
              height: 200,
              width: 200,
              child: const Image(
                image: AssetImage('lib/assets/logo_new.png'),
                fit: BoxFit.fill,
              ),
            ),
            Container(
                padding: const EdgeInsets.all(5),
                child: const TextField(
                    decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.red),
                  labelText: 'Email',
                  hintText: AutofillHints.email,
                ))),
            Container(
                padding: const EdgeInsets.all(5),
                child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.red),
                      labelText: 'Password',
                      hintText: AutofillHints.password,
                    ))),
            Container(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 30),
                child: const Text('forgot password?',
                    style: TextStyle(color: Colors.grey))),
            FractionallySizedBox(
                widthFactor: 0.99,
                child: ElevatedButton(
                    onPressed: () {
                      debugPrint('SIGNED');
                    },
                    child: const Text('Sign In'))),
            Container(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                child: const Text('or', style: TextStyle(color: Colors.grey))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const[
                Icon(Icons.g_mobiledata, size: 40, color: Colors.grey),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.facebook, size: 28, color: Colors.grey)
              ],
            ),
            
            TextButton(
              onPressed: () {
                // Button pressed callback
              },
              child: const Text(
                "Don't you have an account? Sign Up",
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
