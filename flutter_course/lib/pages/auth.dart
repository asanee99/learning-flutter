import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _AuthPageState();
  }
}

class _AuthPageState extends State<AuthPage> {
  String _usernameValue;
  String _passwordValue;
  bool _acceptTerms;

  FocusNode _passwordNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.4), BlendMode.dstATop)),
        ),
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  autofocus: true,
                  decoration: InputDecoration(
                      labelText: 'Username',
                      filled: true,
                      fillColor: Colors.white),
                  onChanged: (String value) {
                    setState(() {
                      _usernameValue = value;
                    });
                  },
                  onEditingComplete: () {
                    FocusScope.of(context).requestFocus(_passwordNode);
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  autocorrect: false,
                  focusNode: _passwordNode,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      filled: true,
                      fillColor: Colors.white),
                  obscureText: true,
                  onChanged: (String value) {
                    setState(() {
                      _passwordValue = value;
                    });
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                SwitchListTile(
                  value: _acceptTerms = false,
                  onChanged: (bool value) {
                    setState(() {
                      _acceptTerms = value;
                    });
                  },
                  title: Text('Accept Terms'),
                ),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                RaisedButton(
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    print(_usernameValue);
                    print(_passwordValue);
                    print(_acceptTerms);
                    Navigator.pushReplacementNamed(context, '/admin');
                  },
                ),
                RaisedButton(
                  child: Text('Forgot Password'),
                  color: Theme.of(context).accentColor,
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
