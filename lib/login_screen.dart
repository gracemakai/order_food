import 'package:flutter/material.dart';
import 'package:order_food/register_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  void _navigateToRegisterScreen() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RegisterScreen()));
  }

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 250,
          child: Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assets/app_icon_plate.png",
                  height: 100,
                  width: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: TextField(
                    controller: _emailTextController,
                    decoration: InputDecoration(
                      hintText: "Email",
                      contentPadding: EdgeInsets.only(left: 10),
                    ),
                  ),
                ),
                TextField(
                  controller: _passwordTextController,
                  decoration: InputDecoration(
                    hintText: "Password",
                    contentPadding: EdgeInsets.only(left: 10),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: ElevatedButton(child: Text("LogIn"), onPressed: () {}),
                ),
                TextButton(
                  child: Text("No account?"),
                  onPressed: () {
                    _navigateToRegisterScreen();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
