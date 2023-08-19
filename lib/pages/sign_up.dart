import 'package:Binta/pages/privacy_policy.dart';
import 'package:Binta/pages/sign_in.dart';
import 'package:Binta/pages/terms_of_service.dart';
import 'package:Binta/shared/spinner.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../shared/colors.dart';
import 'homepage.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  void initState() {
    print('Sign up  page');
    super.initState();
  }

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

  @override
  Widget build(BuildContext context) {
    return showSignIn
      ? SignIn()
      : Scaffold(
          backgroundColor: Colors.grey[600],
          resizeToAvoidBottomInset: false,
          body: Stack(
            fit: StackFit.loose,
            alignment: Alignment.center,
            children: [
              Positioned(
                child: Container(
                  alignment: Alignment.center,
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
                  color: colorPrimaryGrey.withOpacity(0.8),
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
                                    padding: const EdgeInsetsDirectional.only(end: 50.0),
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
                                    ? "Passwords do not match"
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
                                SizedBox(
                                  width: 50.0,
                                  child: TextButton(
                                    child: isChecked ? Icon(Icons.check_box)
                                        : Icon(Icons.check_box_outline_blank),
                                    onPressed: () {
                                      setState(() => isChecked = !isChecked);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: RichText(
                                    text: TextSpan(
                                        children: [
                                          TextSpan(text: 'By Signing Up, I agree to the ',
                                            style: TextStyle(color: colorBlack, fontSize: 15.0)),
                                          TextSpan(
                                            text: 'Terms of Service',
                                              style: TextStyle(color: colorPrimaryPurple, fontSize: 15.0),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                Get.to(
                                                  TermsOfService(),
                                                  transition: Transition.rightToLeft,
                                                  duration: Duration(milliseconds: 500),
                                                );
                                              },
                                          ),
                                          TextSpan(text: ' and ', style: TextStyle(color: colorBlack, fontSize: 15.0)),
                                          TextSpan(
                                            text: 'Privacy Policy',
                                            style: TextStyle(color: colorPrimaryPurple, fontSize: 15.0),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                                Get.to(
                                                  PrivacyPolicy(),
                                                  transition: Transition.leftToRight,
                                                  duration: Duration(milliseconds: 500),
                                                );
                                              },
                                          ),
                                          TextSpan(text: ' of Binta.', style: TextStyle(color: colorBlack, fontSize: 15.0)),
                                        ], style: TextStyle(color: colorBlack, fontSize: 15.0)),
                                    textAlign: TextAlign.start,
                                    textScaleFactor: MediaQuery.of(context).textScaleFactor,
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
                          SharedPreferences prefs = await SharedPreferences.getInstance();
                          if (_formKey.currentState!.validate() && isChecked) {
                            prefs.setBool('logged_in', true);
                            Get.off(HomePage());
                          } else if (!isChecked) {
                            setState(() {
                              loading = false;
                              errorCheckbox = 'Please indicate that you accept the Terms and Conditions';
                            });
                          } else {
                            setState(() {
                              loading = false;
                            });
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
                              style: TextStyle(color: colorWhite, fontSize: 17.0),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        errorSignUp,
                        style: TextStyle(fontSize: 14.0, color: colorRed),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 1,
                child: TextButton(
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
