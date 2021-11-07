import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignupField extends StatefulWidget {
  const SignupField({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SignupFieldState();
}

class _SignupFieldState extends State<SignupField> {
  var passVis = true;
  var themeSwitcher = ThemeData.dark();
  var theme = false;
  var themeText = const Text('L ⚪', style: TextStyle(color: Colors.white),);
  var signupDarkColor = Color.fromRGBO(62, 145, 255, 1);
  var signupLightColor = Color.fromRGBO(0, 114, 222, 1);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: themeSwitcher,
      title: "Sign Up App",
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              theme = !theme;
              if (theme) {
                themeSwitcher = ThemeData.light();
                themeText = const Text(
                  'D ⚫',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                );
                signupDarkColor = signupLightColor;
              } else {
                themeSwitcher = ThemeData.dark();
                themeText = const Text(
                  'L ⚪',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                );
                signupDarkColor = Color.fromRGBO(62, 145, 255, 1);
              }
            });
          },
          child: themeText,
          backgroundColor: Colors.transparent,
          focusColor: Colors.transparent,
          elevation: 0,
          tooltip: 'Theme switcher',
        ),
        appBar: AppBar(
          leading: const Icon(Icons.login),
          title: const Text('Sign Up Page'),
          shadowColor: Colors.blueGrey[600],
          elevation: 10,
          centerTitle: true,
          toolbarOpacity: 1,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.all(13),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_add_alt_outlined),
                    labelText: "First Name",
                    labelStyle: TextStyle(fontSize: 19),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 0),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlue, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                  ),
                  textCapitalization: TextCapitalization.words,
                  keyboardType: TextInputType.text,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(13),
                child: const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_add_alt_outlined),
                      labelText: "Last Name",
                      labelStyle: TextStyle(fontSize: 19),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 0),
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.lightBlue, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      )),
                  keyboardType: TextInputType.text,
                  textCapitalization: TextCapitalization.words,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(13),
                child: const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: "Email",
                      labelStyle: TextStyle(fontSize: 19),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 0),
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.lightBlue, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      )),
                  keyboardType: TextInputType.text,
                  textCapitalization: TextCapitalization.words,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(13),
                child: const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      labelText: "Phone Number",
                      labelStyle: TextStyle(fontSize: 19),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 0),
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.lightBlue, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      )),
                  keyboardType: TextInputType.phone,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(13),
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              passVis = !passVis;
                            });
                          },
                          icon: Icon(passVis
                              ? Icons.visibility
                              : Icons.visibility_off)),
                      labelText: "Password",
                      labelStyle: const TextStyle(fontSize: 19),
                      enabledBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.transparent, width: 0),
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.lightBlue, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      )),
                  keyboardType: TextInputType.visiblePassword,
                  maxLength: 18,
                  obscureText: passVis,
                ),
              ),
              Container(
                  margin: const EdgeInsets.all(13),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        print('Hello world');
                      });
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 20, letterSpacing: 0),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(signupDarkColor),
                      shadowColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(EdgeInsets.only(
                          left: 30, right: 30, top: 10, bottom: 10)),
                    ),
                  )),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
