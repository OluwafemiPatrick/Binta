import 'package:Binta/pages/home.dart';
import 'package:Binta/pages/sign_in.dart';
import 'package:Binta/services/auth.dart';
import 'package:Binta/shared/spinner.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../shared/colors.dart';

class SignUp extends StatefulWidget {
  final Function toggleView;
  SignUp({this.toggleView});
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  void initState() {
    print('Sign up  page');
    super.initState();
  }

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  final _emailIdController = TextEditingController(text: '');
  final _passwordController = TextEditingController(text: '');
  final _confirmPasswordController = TextEditingController(text: '');
  bool isChecked = false;
  bool showSignIn = false;
  bool _passwordVisible = true;
  String email = '';
  String password = '';
  String rePassword = '';
  String errorCheckbox = '';
  String errorSignUp = '';
  String errorGoogle = '';
  bool loading = false;
  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (value.isEmpty || !regex.hasMatch(value))
      return 'Enter Valid Email Id!!!';
    else
      return null;
  }

  String validatePassword(String value) {
    if (value.trim().isEmpty || value.length < 6 || value.length > 14) {
      return 'Minimum 6 & Maximum 14 Characters!!!';
    }
    return null;
  }

  String validateConfirmPassword(String value) {
    if (value.trim() != _passwordController.text.trim()) {
      return 'Password Mismatch!!!';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return showSignIn
        ? SignIn()
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
                                      controller: _emailIdController,
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
                                      validator: validateEmail,
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
                                      controller: _passwordController,
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
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: colorBlack),
                                        ),
                                        hintText: 'Password',
                                        hintStyle: TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.grey[900],
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
                                      ),
                                      validator: validatePassword,
                                      obscureText: _passwordVisible,
                                      onChanged: (val) {
                                        setState(() {
                                          password = val;
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextFormField(
                                      controller: _confirmPasswordController,
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
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: colorBlack),
                                        ),
                                        hintText: 'Confirm Password',
                                        hintStyle: TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.grey[900],
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
                                      ),
                                      validator: (val) => val != password
                                          ? "Password doesn't match"
                                          : null,
                                      obscureText: _passwordVisible,
                                      onChanged: (val) {
                                        setState(() {
                                          rePassword = val;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FlatButton.icon(
                                        splashColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onPressed: () {
                                          setState(() {
                                            isChecked = !isChecked;
                                          });
                                        },
                                        icon: isChecked
                                            ? Icon(Icons.check_box)
                                            : Icon(
                                                Icons.check_box_outline_blank),
                                        label: Text(
                                          'By Signing Up, I agree to the terms of \n service and privacy policy of Binta.',
                                          style: TextStyle(
                                              color: colorBlack,
                                              fontSize: 16.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    errorCheckbox,
                                    style: TextStyle(
                                        fontSize: 14.0, color: colorRed),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: MediaQuery.of(context).size.height * 0.05,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () async {
                                if (_formKey.currentState.validate() &&
                                    isChecked) {
                                  // showSignIn = !showSignIn;
                                  setState(() {
                                    loading = true;
                                    errorCheckbox = " ";
                                  });
                                  dynamic user =
                                      await _auth.registerWithEmailAndPassword(
                                          email, password);
                                  if (user != null) {
                                    Get.off(Home());
                                  }
                                  if (user == null) {
                                    setState(() {
                                      loading = false;
                                      errorSignUp =
                                          'Could not sign up with these credentials';
                                    });
                                  }
                                } else if (!isChecked) {
                                  setState(() {
                                    loading = false;
                                    errorCheckbox =
                                        'Please indicate that you accept the Terms and Conditions';
                                  });
                                } else {
                                  setState(() {
                                    loading = false;
                                  });
                                  print('validation failed');
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
                                    "Sign Up with Email",
                                    style: TextStyle(
                                        color: colorWhite, fontSize: 17.0),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              errorSignUp,
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
                              style:
                                  TextStyle(fontSize: 14.0, color: Colors.red),
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
                          'Sign In',
                          style: TextStyle(
                            color: colorBlack,
                            fontSize: 17.0,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            showSignIn = !showSignIn;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              );
  }
}
