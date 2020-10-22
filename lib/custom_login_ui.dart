library custom_login_ui;

import 'package:custom_fade_animation/custom_fade_animation.dart';
import 'package:custom_login_ui/validators.dart';
import 'package:custom_login_ui/widgets.dart';
import 'package:flutter/material.dart';

class CustomLogin extends StatefulWidget {

  @override
  _CustomLogin createState() => _CustomLogin();
  final String loginTextValue;
  CustomLogin({
  Key key,
  this.loginTextValue,
  }) : super(key: key);
}

class _CustomLogin extends State<CustomLogin> {
  final formKey = new GlobalKey<FormState>();
  String _username, _password;


  @override
  Widget build(BuildContext context) {
    final usernameField = TextFormField(
      autofocus: false,
      validator: validateEmail,
      onSaved: (value) => _username = value,
      decoration: buildInputDecoration("Confirm password", Icons.email),
    );

    final passwordField = TextFormField(
      autofocus: false,
      obscureText: true,
      validator: (value) => value.isEmpty ? "Please enter password" : null,
      onSaved: (value) => _password = value,
      decoration: buildInputDecoration("Confirm password", Icons.lock),
    );

    var doLogin = (String username, String password) {
      final form = formKey.currentState;

      if (form.validate()) {
        form.save();

      } else {
        print("form is invalid");
      }
    };
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/background.png'),
                          fit: BoxFit.fill
                      )
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 30,
                        width: 80,
                        height: 200,
                        child: FadeAnimation(1, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/light-1.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        left: 140,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(1.3, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/light-2.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        right: 40,
                        top: 40,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(1.5, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/clock.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        child: FadeAnimation(1.6, Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Center(
                            child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                          ),
                        )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(1.8, Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10)
                              )
                            ]
                        ),
                        child:  SafeArea(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(8.0,0,8.0,0.0),
                            child: Form(
                              key: formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //SizedBox(height: 15.0),
                                  label("Email"),
                                  SizedBox(height: 5.0),
                                  usernameField,
                                  SizedBox(height: 20.0),
                                  label("Password"),
                                  SizedBox(height: 5.0),
                                  passwordField,
                                  SizedBox(height: 20.0),
                                  longButtons(widget.loginTextValue, doLogin),
                                  SizedBox(height: 5.0),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )),
                      SizedBox(height: 30,),
                      // submitButton(bloc),
                      //SizedBox(height: 10,),
                      // loadingIndicator(bloc),
                      //SizedBox(height: 70,),
                      //FadeAnimation(1.5, Text("Forgot Password?", style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),)),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );

  }
}

