import 'package:flutter/material.dart';
import 'package:insta_login_ui/welcome.dart';
import 'theme.dart';

// ignore: camel_case_types
class signinpage extends StatefulWidget {
  const signinpage({Key? key}) : super(key: key);

  @override
  _signinpageState createState() => _signinpageState();
}

// ignore: camel_case_types
class _signinpageState extends State<signinpage> {
  bool _isEmailValid = false;
  bool _isPasswordValid = false;

  bool _isHidePassword = false;
  bool _isLogin = false;

  get _emailController => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(2.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height - 90),
              child: Container(
                margin: const EdgeInsets.fromLTRB(2, 80, 2, 10),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SafeArea(child: Image.asset("assets/images/instagram.png")),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: greyColor,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: greyBorderColor,
                          width: 0.3,
                        ),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Phone number, username or email',
                          hintStyle: TextStyle(
                            color: greyDarkColor,
                            fontSize: 14,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _isEmailValid = !_isEmailValid;
                                _emailController.clear();
                              });
                            },
                            child: _isEmailValid
                                ? const Icon(Icons.close_rounded)
                                : const SizedBox(),
                          ),
                        ),
                        onChanged: (value) {
                          setState(() {
                            _isEmailValid = value.length >= 1;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: greyColor,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: greyBorderColor,
                          width: 0.3,
                        ),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        obscureText: !_isHidePassword,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: greyDarkColor,
                            fontSize: 14,
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _isHidePassword = !_isHidePassword;
                              });
                            },
                            child: (!_isHidePassword)
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility),
                          ),
                        ),
                        onChanged: (value) {
                          setState(() {
                            _isPasswordValid = value.length >= 1;
                          });
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        alignment: Alignment.bottomRight,
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.blue),
                        )),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                        height: 45,
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () => {
                                  Future.delayed(Duration(seconds: 2), () {
                                    setState(() {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => welcomewidget(),
                                        ),
                                      );
                                      _isLogin = false;
                                    });
                                  }),
                                },
                            child: const Text("Login"))),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Expanded(
                          child: Divider(
                            thickness: 0.8,
                          ),
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        const Text("OR"),
                        const SizedBox(
                          width: 24,
                        ),
                        const Expanded(
                          child: Divider(
                            thickness: 0.8,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/facebook.png",
                          width: 25,
                          height: 100,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Log in with facebook",
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 45,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: greyBorderColor,
              width: 0.3,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don't have an account? ",
              style: TextStyle(
                color: greyDarkColor,
                letterSpacing: 0.1,
              ),
            ),
            Text(
              ' Sign Up.',
              style: TextStyle(
                color: blueColor,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
