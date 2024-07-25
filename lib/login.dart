import 'package:ecom_app/colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TODO: Add text editing controllers (101)
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 200.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                const SizedBox(height: 16.0),
                Text(
                  'SHRINE',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
            const SizedBox(height: 60.0),
            // username
            // ignore: prefer_const_constructors
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 30.0),
            //password
            // ignore: prefer_const_constructors
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            OverflowBar(
              alignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('CANCEL'),
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                  },
                  style: TextButton.styleFrom(
                      foregroundColor: kShrineBrown900,
                      shape: const BeveledRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(7.0)))),
                ),
                ElevatedButton(
                  child: const Text("NEXT"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kShrinePink100,
                    foregroundColor: kShrineBrown900,
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7.0))),
                    elevation: 8.0,
                  ),
                ),
              ],
              //If we passed null, the buttons would become disabled.
              // There would be no feedback on touch and we couldn't get a good idea of their enabled behavior.
              // Using empty blocks prevents them from being disabled.
            )
          ],
        ),
      ),
    );
  }
}
