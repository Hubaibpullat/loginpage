import 'package:flutter/material.dart';

import 'package:flutter_application_1/screens/Home.dart';

class ScreenLogin extends StatefulWidget {
  ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  // ignore: unused_field
  final _usernameController = TextEditingController();

 
  final _passwordController = TextEditingController();

  bool _isDataMatched = true;

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Image.asset('assets/login.jpg'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "LOGIN TO YOUR ACCOUNT",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          20.0), // Adjust the value as needed
                    ),
                    hintText: 'Username',
                  ),
                  validator: (value) {
                    // Your validation logic here
                    if (value == null || value.isEmpty) {
                      return 'value is empty';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                          20.0), // Adjust the value as needed
                    ),
                    hintText: 'Password',
                  ),
                  validator: (value) {
                    // Your validation logic here
                    if (value == null || value.isEmpty) {
                      return 'value is empty';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Visibility(
                      visible: !_isDataMatched,
                      child: Text('username password does not match'),
                    ),
                    // ElevatedButton.icon(
                    //   onPressed: () {
                    //     if (_formkey.currentState!.validate()) {
                    //       checkLogin(context);
                    //     } else {
                    //       print('Data empty');
                    //     }
                    //   },
                    //   icon: Icon(Icons.check),
                    //   label: Text('Login'),
                    // ),

                    //for touch access
                    GestureDetector(
                      onTap: () {
                        if (_formkey.currentState!.validate()) {
                          checkLogin(context);
                        } else {
                          print('Data empty');
                        }
                      },
                      child: Container(
                        height: 40,
                        width: 220,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 13, 120, 17),
                          borderRadius: BorderRadius.circular(
                              10.0), // Adjust the value as needed
                        ),
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
               
              ],
            ),
          ),
        ),
      ),
    );
  }

  void checkLogin(BuildContext ctx) {
    final _username = _usernameController.text;
    final _password = _passwordController.text;
    if (_username == "Hubaib" && _password == "12345") {
      //go to home}

      Navigator.of(ctx)
          .pushReplacement(MaterialPageRoute(builder: (ctx1) => ScreenHome()));
    } else {
      // final _errorMessage = Text('username password does not match');
      //snackbar

      ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.green,
        margin: EdgeInsets.all(10),
        content: Text('Noooo itsss wroongg passwoord !'),
        duration: Duration(seconds: 5),
      ));

      //alert dialog

      // showDialog(
      //     context: ctx,
      //     builder: (ctx1) {
      //       return AlertDialog(
      //         title: Text('Error'),
      //         content: Text(_errorMessage),
      //         actions: [
      //           TextButton(
      //             onPressed: () {
      //               Navigator.of(ctx1).pop();
      //             },
      //             child: Text('close'),
      //           ),
      //         ],
      //       );
      // });

      //show text

      //     setState(() {
      //       _isDataMatched = false;
      //     });
    }
  }
}
