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

  DecorationImage _buildBackgroundImage() {
    return DecorationImage(
        image: AssetImage('assets/background.jpg'),
        fit: BoxFit.cover,
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop));
  }

  Widget _buildEmailInputField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      autofocus: true,
      decoration: InputDecoration(
          labelText: 'Username', filled: true, fillColor: Colors.white),
      onChanged: (String value) {
        setState(() {
          _usernameValue = value;
        });
      },
      onEditingComplete: () {
        FocusScope.of(context).requestFocus(_passwordNode);
      },
    );
  }

  Widget _buildPasswordInputField() {
    return TextField(
      autocorrect: false,
      focusNode: _passwordNode,
      decoration: InputDecoration(
          labelText: 'Password', filled: true, fillColor: Colors.white),
      obscureText: true,
      onChanged: (String value) {
        setState(() {
          _passwordValue = value;
        });
      },
    );
  }

  Widget _buildTemrsSwitch() {
    return SwitchListTile(
      value: _acceptTerms = false,
      onChanged: (bool value) {
        setState(() {
          _acceptTerms = value;
        });
      },
      title: Text('Accept Terms'),
    );
  }

  Widget _buildLoginButtonWithSummited() {
    return RaisedButton(
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: _buildBackgroundImage(),
        ),
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _buildEmailInputField(),
                SizedBox(
                  height: 10.0,
                ),
                _buildPasswordInputField(),
                SizedBox(
                  height: 10.0,
                ),
                _buildTemrsSwitch(),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                _buildLoginButtonWithSummited(),
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
