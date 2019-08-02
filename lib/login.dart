import 'package:flutter/material.dart';

import 'colors.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordContorller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                SizedBox(height: 16.0),
                Text('SHRINE')
              ],
            ),
            SizedBox(height: 120.0),
            AccentColorOverride(
              color: kShrineBrown900,
              child: TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                ),
              ),
            ),
            SizedBox(height: 12.0),
            AccentColorOverride(
              color: kShrineBrown900,
              child: TextField(
                controller: _passwordContorller,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,
              ),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0)),
                  child: Text('Cancel'),
                  onPressed: () {
                    _usernameController.clear();
                    _passwordContorller.clear();
                  },
                ),
                RaisedButton(
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0)),
                  child: Text('NEXT'),
                  elevation: 8.0,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class AccentColorOverride extends StatelessWidget {
  const AccentColorOverride({Key key, this.color, this.child})
      : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      child: child,
      data: Theme.of(context).copyWith(
        accentColor: color,
        brightness: Brightness.dark,
      ),
    );
  }
}
