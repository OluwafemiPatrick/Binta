import 'package:Binta/pages/home.dart';
import 'package:Binta/pages/sign_up.dart';
import 'package:Binta/services/auth.dart';
import 'package:Binta/shared/spinner.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../shared/colors.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  void initState() {
    print('sign in page');
    super.initState();
  }

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  bool showSignUp = false;
  String email = '';
  String password = '';
  String error = '';
  String errorGoogle = '';
  bool _passwordVisible = true;
  bool loading = false;
  String validatePassword(String value) {
    if (value.trim().isEmpty || value.length < 6 || value.length > 14) {
      return 'Minimum 6 & Maximum 14 Characters!!!';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return showSignUp
        ? SignUp()
        : loading
            ? Spinner()
            : Scaffold(
                backgroundColor: Colors.grey[600],
                resizeToAvoidBottomInset: false,
                resizeToAvoidBottomPadding: false,
                body: Stack(
                  fit: StackFit.loose,
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      child: Container(
                        alignment: Alignment.center,
                        // margin: EdgeInsets.symmetric(horizontal: 10),
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          "lib/shared/assets/images/80961053-46a3-4978-a1dd-fb8743f93b65.jpeg",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      child: Container(
                        color: colorPrimaryGrey.withOpacity(0.5),
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 80,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "lib/shared/assets/images/Webp.net-resizeimage (1).png"),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 450,
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width * 0.9,
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Form(
                              key: _formKey,
                              child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    TextFormField(
                                      decoration: InputDecoration(
                                        prefixIcon: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.only(
                                                  end: 50.0),
                                          child: Icon(
                                            Icons.email,
                                            color: colorPrimaryPurple,
                                            size: 25.0,
                                          ),
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: colorBlack),
                                        ),
                                        hintText: 'Email',
                                        hintStyle: TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.grey[900],
                                        ),
                                      ),
                                      validator: (val) =>
                                          val.isEmpty ? 'Enter an email' : null,
                                      onChanged: (val) {
                                        setState(() {
                                          email = val;
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        prefixIcon: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.only(
                                                  end: 50.0),
                                          child: Icon(
                                            Icons.lock,
                                            color: colorPrimaryPurple,
                                            size: 25.0,
                                          ),
                                        ),
                                        suffixIcon: IconButton(
                                          icon: Icon(_passwordVisible
                                              ? Icons.visibility
                                              : Icons.visibility_off),
                                          onPressed: () {
                                            setState(() {
                                              _passwordVisible =
                                                  !_passwordVisible;
                                            });
                                          },
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: colorBlack),
                                        ),
                                        hintText: 'Password',
                                        hintStyle: TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.grey[900],
                                        ),
                                      ),
                                      obscureText: _passwordVisible,
                                      validator: validatePassword,
                                      onChanged: (val) {
                                        setState(() {
                                          password = val;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: MediaQuery.of(context).size.height * 0.08,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () async {
                                if (_formKey.currentState.validate()) {
                                  setState(() {
                                    loading = true;
                                  });
                                  dynamic user =
                                      await _auth.signInWithEmailAndPassword(
                                          email, password);

                                  if (user == null) {
                                    setState(() {
                                      loading = false;
                                      error =
                                          'could not sign in with these credentials';
                                    });
                                  } else {
                                    Get.off(Home());
                                  }
                                }
                              },
                              child: Container(
                                height: 50,
                                width: 320,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    color: colorPurpleBright),
                                child: Center(
                                  child: Text(
                                    "Sign in with Email",
                                    style: TextStyle(
                                        color: colorWhite, fontSize: 17.0),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              error,
                              style: TextStyle(fontSize: 14.0, color: colorRed),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () async {
                                setState(() {
                                  loading = true;
                                });
                                dynamic user = await _auth.signInWithGoogle();
                                if (user != null) {
                                  Get.off(Home());
                                }
                                if (user == null) {
                                  setState(() {
                                    loading = false;
                                    errorGoogle =
                                        'Google Authentication Failed!';
                                  });
                                }
                              },
                              child: Container(
                                height: 50,
                                width: 320,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    color: colorGoogle),
                                child: Center(
                                  child: Text(
                                    "Google",
                                    style: TextStyle(
                                      color: colorWhite,
                                      fontSize: 17.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              errorGoogle,
                              style: TextStyle(fontSize: 14.0, color: colorRed),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 1,
                      child: FlatButton(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        child: Text(
                          'Create an account',
                          style: TextStyle(
                            color: colorBlack,
                            fontSize: 17.0,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            showSignUp = !showSignUp;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              );
  }
}
